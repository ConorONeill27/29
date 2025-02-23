import wikipedia
import os

# Create output directory
output_dir = "wiki_pages"
os.makedirs(output_dir, exist_ok=True)

# Define topics
topics = ["Robotics", "Machine learning", "Artificial intelligence", "Deep learning"]

# Fetch and save pages as markdown
for topic in topics:
    try:
        content = wikipedia.page(topic).content
        with open(os.path.join(output_dir, f"{topic}.md"), "w", encoding="utf-8") as f:
            f.write(f"# {topic}\n\n{content}")
    except Exception as e:
        print(f"Failed to fetch {topic}: {e}")
