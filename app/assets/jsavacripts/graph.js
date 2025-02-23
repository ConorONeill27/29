const candidateLabels = ["Technology", "Business", "Health", "Science", "Education", "Sports", "Politics", "Entertainment"];
const baseFontSize = 24;
const maxFontSize = 48;

document.addEventListener('DOMContentLoaded', () => {
  document.getElementById('fullscreenButton').addEventListener('click', () => {
    const networkContainer = document.getElementById('network');
    if (!document.fullscreenElement) {
      if (networkContainer.requestFullscreen) {
        networkContainer.requestFullscreen();
      } else if (networkContainer.mozRequestFullScreen) { 
        networkContainer.mozRequestFullScreen();
      } else if (networkContainer.webkitRequestFullscreen) {
        networkContainer.webkitRequestFullscreen();
      } else if (networkContainer.msRequestFullscreen) {
        networkContainer.msRequestFullscreen();
      }
    } else {
      if (document.exitFullscreen) {
        document.exitFullscreen();
      } else if (document.mozCancelFullScreen) {
        document.mozCancelFullScreen();
      } else if (document.webkitExitFullscreen) {
        document.webkitExitFullscreen();
      } else if (document.msExitFullscreen) {
        document.msExitFullscreen();
      }
    }
  });

  // Extract proper nouns using Compromise.
  function extractProperNouns(text, topN = 5) {
    const doc = nlp(text);
    let personNames = doc.people().out('array');
    let properNouns = doc.match('#ProperNoun').out('array');
    properNouns = properNouns.filter(noun => {
      return !personNames.some(fullName => fullName.includes(noun));
    });
    let combined = personNames.concat(properNouns);
    const counts = {};
    combined.forEach(word => {
      word = word.trim();
      if (word.length > 2) {
        counts[word] = (counts[word] || 0) + 1;
      }
    });
    const entries = Object.entries(counts).sort((a, b) => b[1] - a[1]);
    let keywords = entries.slice(0, topN).map(entry => ({ keyword: entry[0], count: entry[1] }));
    if (keywords.length === 0) { 
      keywords = [{ keyword: "Uncategorized", count: 1 }]; 
    }
    return keywords;
  }

  // Classify text using Hugging Face's zero-shot classification API.
  async function classifyText(text) {
    const apiUrl = "https://api-inference.huggingface.co/models/facebook/bart-large-mnli";
    try {
      const response = await fetch(apiUrl, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          inputs: text,
          parameters: { candidate_labels: candidateLabels }
        })
      });
      if (!response.ok) {
        console.error("API response error:", response.statusText);
        return "";
      }
      const result = await response.json();
      if (result && result.labels && result.labels.length > 0) {
        return result.labels[0];
      }
    } catch (err) {
      console.error("Classification error:", err);
    }
    return "";
  }

  // Process selected files.
  document.getElementById('fileInput').addEventListener('change', event => {
    const files = event.target.files;
    const docs = [];
    const promises = [];
    for (let i = 0; i < files.length; i++) {
      const file = files[i];
      const promise = new Promise((resolve, reject) => {
        const reader = new FileReader();
        reader.onload = async function(e) {
          const content = e.target.result;
          const keywords = extractProperNouns(content);
          const classification = await classifyText(content);
          resolve({ name: file.name, keywords, classification });
        };
        reader.onerror = reject;
        reader.readAsText(file);
      });
      promises.push(promise);
    }
    Promise.all(promises).then(results => {
      const globalFreq = {};
      results.forEach(doc => {
        doc.keywords.forEach(obj => {
          const kw = obj.keyword;
          globalFreq[kw] = (globalFreq[kw] || 0) + 1;
        });
      });
      results.forEach(doc => {
        doc.tags = doc.keywords.filter(obj => globalFreq[obj.keyword] > 1).map(obj => obj.keyword);
      });
      updateTable(results);
      buildNetwork(results, globalFreq);
    });
  });

  // Update the HTML table with document details.
  function updateTable(docs) {
    let html = '<table><thead><tr><th>File Name</th><th>Proper Noun Keywords</th><th>Tags</th><th>Classification</th></tr></thead><tbody>';
    docs.forEach(doc => {
      const keywordText = doc.keywords.map(obj => obj.keyword).join(', ');
      html += `<tr>
                 <td>${doc.name}</td>
                 <td>${keywordText}</td>
                 <td>${doc.tags.join(', ') || 'None'}</td>
                 <td>${doc.classification}</td>
               </tr>`;
    });
    html += '</tbody></table>';
    document.getElementById('tableContainer').innerHTML = html;
  }

  // Fade in a node by gradually increasing its opacity.
  function fadeIn(nodeId, nodes) {
    let opacity = 0, step = 0.1;
    const interval = setInterval(() => {
      opacity += step;
      if (opacity >= 1) { opacity = 1; clearInterval(interval); }
      nodes.update({ id: nodeId, opacity: opacity });
    }, 50);
  }

  // Build the network graph using vis-network.
  function buildNetwork(docs, globalFreq) {
    const nodes = new vis.DataSet([]);
    const edges = new vis.DataSet([]);
    const keywordNodes = {};
    const classificationNodes = {};

    let docId = 1, kwId = 1001, clsId = 2001;

    docs.forEach(doc => {
      const currentDocId = docId++;
      nodes.add({ 
        id: currentDocId, 
        label: doc.name, 
        fullLabel: doc.name, 
        shape: 'box', 
        color: { background: '#AED6F1', border: '#5DADE2' },
        font: { size: baseFontSize },
        type: 'document',
        opacity: 1,
        widthConstraint: { minimum: 0, maximum: 400 },
        heightConstraint: { minimum: 0, maximum: 120 },
        shadow: { enabled: true, color: 'rgba(0,0,0,0.2)', size: 5, x: 3, y: 3 }
      });
      doc.keywords.forEach(obj => {
        const kw = obj.keyword;
        const count = obj.count;
        if (!(kw in keywordNodes)) {
          const isTag = globalFreq[kw] > 1;
          keywordNodes[kw] = kwId;
          nodes.add({
            id: kwId,
            label: kw,
            fullLabel: kw,
            shape: 'ellipse',
            color: isTag 
                    ? { background: '#F1948A', border: '#E74C3C' }
                    : { background: '#F9E79F', border: '#F7DC6F' },
            font: { size: baseFontSize },
            type: 'keyword',
            opacity: 1,
            widthConstraint: { minimum: 0, maximum: 150 },
            heightConstraint: { minimum: 0, maximum: 10 }
          });
          kwId++;
        }
        edges.add({ 
          from: currentDocId, 
          to: keywordNodes[kw],
          width: 1 + Math.log(count + 1)
        });
      });

      let cls = doc.classification || "";
      if (!(cls in classificationNodes)) {
        classificationNodes[cls] = clsId;
        nodes.add({
          id: clsId,
          label: cls,
          fullLabel: cls,
          shape: 'diamond',
          color: { background: '#C39BD3', border: '#AF7AC5' },
          font: { size: baseFontSize },
          type: 'classification',
          opacity: 1,
          widthConstraint: { minimum: 120 },
          heightConstraint: { minimum: 40 }
        });
        clsId++;
      }
      edges.add({ from: currentDocId, to: classificationNodes[cls], width: 1 });
    });

    const container = document.getElementById('network');
    const data = { nodes: nodes, edges: edges };
    const options = {
      layout: { improvedLayout: true },
      physics: {
        forceAtlas2Based: {
          gravitationalConstant: -2000,
          centralGravity: 0,
          springLength: 3000,
          springConstant: 0.05,
          avoidOverlap: 2
        },
        maxVelocity: 50,
        timestep: 0.35,
        stabilization: { iterations: 500 }
      },
      interaction: { hover: true }
    };

    const network = new vis.Network(container, data, options);

    let scheduledUpdate = false;
    let pendingScale = network.getScale();
    function scheduleUpdate(scale) {
      pendingScale = scale;
      if (!scheduledUpdate) {
        scheduledUpdate = true;
        requestAnimationFrame(() => {
          updateNodeDisplay(pendingScale);
          scheduledUpdate = false;
        });
      }
    }

    function updateNodeDisplay(scale) {
      let effectiveFontSize = Math.min(baseFontSize / scale, maxFontSize);
      const allNodes = nodes.get();
      allNodes.forEach(function(node) {
        let update = { id: node.id, font: { size: effectiveFontSize } };
        if (node.type === 'keyword' && scale < 0.8) { update.hidden = true; }
        else { update.hidden = false; }
        if (node.type === 'document' && scale < 0.6) { update.label = ""; }
        else { update.label = node.fullLabel; }
        nodes.update(update);
        if (!update.hidden) {
          let currentOpacity = nodes.get(node.id).opacity;
          if (!currentOpacity || currentOpacity < 1) {
            nodes.update({ id: node.id, opacity: 0 });
            fadeIn(node.id, nodes);
          }
        }
      });
    }

    updateNodeDisplay(network.getScale());
    network.on('zoom', params => { scheduleUpdate(params.scale); });
    network.on('dragEnd', () => { scheduleUpdate(network.getScale()); });
    
    network.once('stabilizationIterationsDone', () => {
      const totalNodes = nodes.length;
      const legendDiv = document.getElementById('legend');
      legendDiv.innerHTML = totalNodes > 50 
        ? "Large graph (" + totalNodes + " nodes). Zoom and pan to explore details." 
        : "";
    });
  }
});
