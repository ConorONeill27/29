# AI safety

AI safety is an interdisciplinary field focused on preventing accidents, misuse, or other harmful consequences arising from artificial intelligence (AI) systems. It encompasses machine ethics and AI alignment, which aim to ensure AI systems are moral and beneficial, as well as monitoring AI systems for risks and enhancing their reliability. The field is particularly concerned with existential risks posed by advanced AI models.
Beyond technical research, AI safety involves developing norms and policies that promote safety. It gained significant popularity in 2023, with rapid progress in generative AI and public concerns voiced by researchers and CEOs about potential dangers. During the 2023 AI Safety Summit, the United States and the United Kingdom both established their own AI Safety Institute. However, researchers have expressed concern that AI safety measures are not keeping pace with the rapid development of AI capabilities.


== Motivations ==
Scholars discuss current risks from critical systems failures, bias, and AI-enabled surveillance, as well as emerging risks like technological unemployment, digital manipulation, weaponization, AI-enabled cyberattacks and bioterrorism. They also discuss speculative risks from losing control of future artificial general intelligence (AGI) agents, or from AI enabling perpetually stable dictatorships.


=== Existential safety ===

Some have criticized concerns about AGI, such as Andrew Ng who compared them in 2015 to "worrying about overpopulation on Mars when we have not even set foot on the planet yet". Stuart J. Russell on the other side urges caution, arguing that "it is better to anticipate human ingenuity than to underestimate it".
AI researchers have widely differing opinions about the severity and primary sources of risk posed by AI technology – though surveys suggest that experts take high consequence risks seriously. In two surveys of AI researchers, the median respondent was optimistic about AI overall, but placed a 5% probability on an "extremely bad (e.g. human extinction)" outcome of advanced AI. In a 2022 survey of the natural language processing community, 37% agreed or weakly agreed that it is plausible that AI decisions could lead to a catastrophe that is "at least as bad as an all-out nuclear war".


== History ==
Risks from AI began to be seriously discussed at the start of the computer age:

Moreover, if we move in the direction of making machines which learn and whose behavior is modified by experience, we must face the fact that every degree of independence we give the machine is a degree of possible defiance of our wishes.
In 1988 Blay Whitby published a book outlining the need for AI to be developed along ethical and socially responsible lines. 
From 2008 to 2009, the Association for the Advancement of Artificial Intelligence (AAAI) commissioned a study to explore and address potential long-term societal influences of AI research and development. The panel was generally skeptical of the radical views expressed by science-fiction authors but agreed that "additional research would be valuable on methods for understanding and verifying the range of behaviors of complex computational systems to minimize unexpected outcomes".
In 2011, Roman Yampolskiy introduced the term "AI safety engineering" at the Philosophy and Theory of Artificial Intelligence conference, listing prior failures of AI systems and arguing that "the frequency and seriousness of such events will steadily increase as AIs become more capable".
In 2014, philosopher Nick Bostrom published the book Superintelligence: Paths, Dangers, Strategies. He has the opinion that the rise of AGI has the potential to create various societal issues, ranging from the displacement of the workforce by AI, manipulation of political and military structures, to even the possibility of human extinction. His argument that future advanced systems may pose a threat to human existence prompted Elon Musk, Bill Gates, and Stephen Hawking to voice similar concerns.
In 2015, dozens of artificial intelligence experts signed an open letter on artificial intelligence calling for research on the societal impacts of AI and outlining concrete directions. To date, the letter has been signed by over 8000 people including Yann LeCun, Shane Legg, Yoshua Bengio, and Stuart Russell.
In the same year, a group of academics led by professor Stuart Russell founded the Center for Human-Compatible AI at the University of California Berkeley and the Future of Life Institute awarded $6.5 million in grants for research aimed at "ensuring artificial intelligence (AI) remains safe, ethical and beneficial".
In 2016, the White House Office of Science and Technology Policy and Carnegie Mellon University announced The Public Workshop on Safety and Control for Artificial Intelligence, which was one of a sequence of four White House workshops aimed at investigating "the advantages and drawbacks" of AI. In the same year, Concrete Problems in AI Safety – one of the first and most influential technical AI Safety agendas – was published.
In 2017, the Future of Life Institute sponsored the Asilomar Conference on Beneficial AI, where more than 100 thought leaders formulated principles for beneficial AI including "Race Avoidance: Teams developing AI systems should actively cooperate to avoid corner-cutting on safety standards".
In 2018, the DeepMind Safety team outlined AI safety problems in specification, robustness, and assurance. The following year, researchers organized a workshop at ICLR that focused on these problem areas.
In 2021, Unsolved Problems in ML Safety was published, outlining research directions in robustness, monitoring, alignment, and systemic safety.
In 2023, Rishi Sunak said he wants the United Kingdom to be the "geographical home of global AI safety regulation" and to host the first global summit on AI safety. The AI safety summit took place in November 2023, and focused on the risks of misuse and loss of control associated with frontier AI models. During the summit the intention to create the International Scientific Report on the Safety of Advanced AI was announced.
In 2024, The US and UK forged a new partnership on the science of AI safety. The MoU was signed on 1 April 2024 by US commerce secretary Gina Raimondo and UK technology secretary Michelle Donelan to jointly develop advanced AI model testing, following commitments announced at an AI Safety Summit in Bletchley Park in November.


== Research focus ==

AI safety research areas include robustness, monitoring, and alignment.


=== Robustness ===


==== Adversarial robustness ====
AI systems are often vulnerable to adversarial examples or "inputs to machine learning (ML) models that an attacker has intentionally designed to cause the model to make a mistake". For example, in 2013, Szegedy et al. discovered that adding specific imperceptible perturbations to an image could cause it to be misclassified with high confidence. This continues to be an issue with neural networks, though in recent work the perturbations are generally large enough to be perceptible.

All of the images on the right are predicted to be an ostrich after the perturbation is applied. (Left) is a correctly predicted sample, (center) perturbation applied magnified by 10x, (right) adversarial example.
Adversarial robustness is often associated with security. Researchers demonstrated that an audio signal could be imperceptibly modified so that speech-to-text systems transcribe it to any message the attacker chooses. Network intrusion and malware detection systems also must be adversarially robust since attackers may design their attacks to fool detectors.
Models that represent objectives (reward models) must also be adversarially robust. For example, a reward model might estimate how helpful a text response is and a language model might be trained to maximize this score. Researchers have shown that if a language model is trained for long enough, it will leverage the vulnerabilities of the reward model to achieve a better score and perform worse on the intended task. This issue can be addressed by improving the adversarial robustness of the reward model. More generally, any AI system used to evaluate another AI system must be adversarially robust. This could include monitoring tools, since they could also potentially be tampered with to produce a higher reward.


=== Monitoring ===


==== Estimating uncertainty ====
It is often important for human operators to gauge how much they should trust an AI system, especially in high-stakes settings such as medical diagnosis. ML models generally express confidence by outputting probabilities; however, they are often overconfident, especially in situations that differ from those that they were trained to handle. Calibration research aims to make model probabilities correspond as closely as possible to the true proportion that the model is correct.
Similarly, anomaly detection or out-of-distribution (OOD) detection aims to identify when an AI system is in an unusual situation. For example, if a sensor on an autonomous vehicle is malfunctioning, or it encounters challenging terrain, it should alert the driver to take control or pull over. Anomaly detection has been implemented by simply training a classifier to distinguish anomalous and non-anomalous inputs, though a range of additional techniques are in use.


==== Detecting malicious use ====
Scholars and government agencies have expressed concerns that AI systems could be used to help malicious actors to build weapons, manipulate public opinion, or automate cyber attacks. These worries are a practical concern for companies like OpenAI which host powerful AI tools online. In order to prevent misuse, OpenAI has built detection systems that flag or restrict users based on their activity.


==== Transparency ====
Neural networks have often been described as black boxes, meaning that it is difficult to understand why they make the decisions they do as a result of the massive number of computations they perform. This makes it challenging to anticipate failures. In 2018, a self-driving car killed a pedestrian after failing to identify them. Due to the black box nature of the AI software, the reason for the failure remains unclear. It also raises debates in healthcare over whether statistically efficient but opaque models should be used.
One critical benefit of transparency is explainability. It is sometimes a legal requirement to provide an explanation for why a decision was made in order to ensure fairness, for example for automatically filtering job applications or credit score assignment.
Another benefit is to reveal the cause of failures. At the beginning of the 2020 COVID-19 pandemic, researchers used transparency tools to show that medical image classifiers were 'paying attention' to irrelevant hospital labels.
Transparency techniques can also be used to correct errors. For example, in the paper "Locating and Editing Factual Associations in GPT", the authors were able to identify model parameters that influenced how it answered questions about the location of the Eiffel tower. They were then able to 'edit' this knowledge to make the model respond to questions as if it believed the tower was in Rome instead of France. Though in this case, the authors induced an error, these methods could potentially be used to efficiently fix them. Model editing techniques also exist in computer vision.
Finally, some have argued that the opaqueness of AI systems is a significant source of risk and better understanding of how they function could prevent high-consequence failures in the future. "Inner" interpretability research aims to make ML models less opaque. One goal of this research is to identify what the internal neuron activations represent. For example, researchers identified a neuron in the CLIP artificial intelligence system that responds to images of people in spider man costumes, sketches of spiderman, and the word 'spider'. It also involves explaining connections between these neurons or 'circuits'. For example, researchers have identified pattern-matching mechanisms in transformer attention that may play a role in how language models learn from their context. "Inner interpretability" has been compared to neuroscience. In both cases, the goal is to understand what is going on in an intricate system, though ML researchers have the benefit of being able to take perfect measurements and perform arbitrary ablations.


==== Detecting trojans ====
Machine learning models can potentially contain "trojans" or "backdoors": vulnerabilities that malicious actors maliciously build into an AI system. For example, a trojaned facial recognition system could grant access when a specific piece of jewelry is in view; or a trojaned autonomous vehicle may function normally until a specific trigger is visible. Note that an adversary must have access to the system's training data in order to plant a trojan.  This might not be difficult to do with some large models like CLIP or GPT-3 as they are trained on publicly available internet data. Researchers were able to plant a trojan in an image classifier by changing just 300 out of 3 million of the training images. In addition to posing a security risk, researchers have argued that trojans provide a concrete setting for testing and developing better monitoring tools.
A 2024 research paper by Anthropic showed that large language models could be trained with persistent backdoors. These "sleeper agent" models could be programmed to generate malicious outputs (such as vulnerable code) after a specific date, while behaving normally beforehand. Standard AI safety measures, such as supervised fine-tuning, reinforcement learning and adversarial training, failed to remove these backdoors.


=== Alignment ===


=== Systemic safety and sociotechnical factors ===
It is common for AI risks (and technological risks more generally) to be categorized as misuse or accidents. Some scholars have suggested that this framework falls short. For example, the Cuban Missile Crisis was not clearly an accident or a misuse of technology. Policy analysts Zwetsloot and Dafoe wrote, "The misuse and accident perspectives tend to focus only on the last step in a causal chain leading up to a harm: that is, the person who misused the technology, or the system that behaved in unintended ways… Often, though, the relevant causal chain is much longer." Risks often arise from 'structural' or 'systemic' factors such as competitive pressures, diffusion of harms, fast-paced development, high levels of uncertainty, and inadequate safety culture. In the broader context of safety engineering, structural factors like 'organizational safety culture' play a central role in the popular STAMP risk analysis framework.
Inspired by the structural perspective, some researchers have emphasized the importance of using machine learning to improve sociotechnical safety factors, for example, using ML for cyber defense, improving institutional decision-making, and facilitating cooperation. Others have emphasized the importance of involving both AI practitioners and domain experts in the design process to address structural vulnerabilities.


==== Cyber defense ====
Some scholars are concerned that AI will exacerbate the already imbalanced game between cyber attackers and cyber defenders. This would increase 'first strike' incentives and could lead to more aggressive and destabilizing attacks. In order to mitigate this risk, some have advocated for an increased emphasis on cyber defense. In addition, software security is essential for preventing powerful AI models from being stolen and misused. Recent studies have shown that AI can significantly enhance both technical and managerial cybersecurity tasks by automating routine tasks and improving overall efficiency.


==== Improving institutional decision-making ====
The advancement of AI in economic and military domains could precipitate unprecedented political challenges. Some scholars have compared AI race dynamics to the cold war, where the careful judgment of a small number of decision-makers often spelled the difference between stability and catastrophe. AI researchers have argued that AI technologies could also be used to assist decision-making. For example, researchers are beginning to develop AI forecasting and advisory systems.


==== Facilitating cooperation ====
Many of the largest global threats (nuclear war, climate change, etc.) have been framed as cooperation challenges. As in the well-known prisoner's dilemma scenario, some dynamics may lead to poor results for all players, even when they are optimally acting in their self-interest. For example, no single actor has strong incentives to address climate change even though the consequences may be significant if no one intervenes.
A salient AI cooperation challenge is avoiding a 'race to the bottom'. In this scenario, countries or companies race to build more capable AI systems and neglect safety, leading to a catastrophic accident that harms everyone involved. Concerns about scenarios like these have inspired both political and technical efforts to facilitate cooperation between humans, and potentially also between AI systems. Most AI research focuses on designing individual agents to serve isolated functions (often in 'single-player' games). Scholars have suggested that as AI systems become more autonomous, it may become essential to study and shape the way they interact.


==== Challenges of large language models ====
In recent years, the development of large language models (LLMs) has raised unique concerns within the field of AI safety. Researchers Bender and Gebru et al. have highlighted the environmental and financial costs associated with training these models, emphasizing that the energy consumption and carbon footprint of training procedures like those for Transformer models can be substantial. Moreover, these models often rely on massive, uncurated Internet-based datasets, which can encode hegemonic and biased viewpoints, further marginalizing underrepresented groups. The large-scale training data, while vast, does not guarantee diversity and often reflects the worldviews of privileged demographics, leading to models that perpetuate existing biases and stereotypes. This situation is exacerbated by the tendency of these models to produce seemingly coherent and fluent text, which can mislead users into attributing meaning and intent where none exists, a phenomenon described as 'stochastic parrots'. These models, therefore, pose risks of amplifying societal biases, spreading misinformation, and being used for malicious purposes, such as generating extremist propaganda or deepfakes. To address these challenges, researchers advocate for more careful planning in dataset creation and system development, emphasizing the need for research projects that contribute positively towards an equitable technological ecosystem.
The unique challenges posed by LLMs also extend to security vulnerabilities.  These include various manipulation techniques, such as prompt injection,  Misinformation Generation and model stealing, which can be exploited to compromise their intended function. This can allow attackers to bypass safety measures and elicit unintended responses


== In governance ==

AI governance is broadly concerned with creating norms, standards, and regulations to guide the use and development of AI systems.


=== Research ===
AI safety governance research ranges from foundational investigations into the potential impacts of AI to specific applications. On the foundational side, researchers have argued that AI could transform many aspects of society due to its broad applicability, comparing it to electricity and the steam engine. Some work has focused on anticipating specific risks that may arise from these impacts – for example, risks from mass unemployment, weaponization, disinformation, surveillance, and the concentration of power. Other work explores underlying risk factors such as the difficulty of monitoring the rapidly evolving AI industry, the availability of AI models, and 'race to the bottom' dynamics. Allan Dafoe, the head of longterm governance and strategy at DeepMind has emphasized the dangers of racing and the potential need for cooperation: "it may be close to a necessary and sufficient condition for AI safety and alignment that there be a high degree of caution prior to deploying advanced powerful systems; however, if actors are competing in a domain with large returns to first-movers or relative advantage, then they will be pressured to choose a sub-optimal level of caution". A research stream focuses on developing approaches, frameworks, and methods to assess AI accountability, guiding and promoting audits of AI-based systems.
Efforts to enhance AI safety include frameworks designed to align AI outputs with ethical guidelines and reduce risks like misuse and data leakage. Tools such as Nvidia's  Guardrails, Llama Guard, Preamble's customizable guardrails and Claude’s Constitution mitigate vulnerabilities like prompt injection and ensure outputs adhere to predefined principles. These frameworks are often integrated into AI systems to improve safety and reliability.


=== Philosophical perspectives ===

The field of AI safety is deeply intertwined with philosophical considerations, particularly in the realm of ethics. Deontological ethics, which emphasizes adherence to moral rules, has been proposed as a framework for aligning AI systems with human values. By embedding deontological principles, AI systems can be guided to avoid actions that cause harm, ensuring their operations remain within ethical boundaries.


=== Scaling local measures to global solutions ===
In addressing the AI safety problem it is important to stress the distinction between local and global solutions. Local solutions focus on individual AI systems, ensuring they are safe and beneficial, while global solutions seek to implement safety measures for all AI systems across various jurisdictions. Some researchers argue for the necessity of scaling local safety measures to a global level, proposing a classification for these global solutions. This approach underscores the importance of collaborative efforts in the international governance of AI safety, emphasizing that no single entity can effectively manage the risks associated with AI technologies. This perspective aligns with ongoing efforts in international policy-making and regulatory frameworks, which aim to address the complex challenges posed by advanced AI systems worldwide.


=== Government action ===

Some experts have argued that it is too early to regulate AI, expressing concerns that regulations will hamper innovation and it would be foolish to "rush to regulate in ignorance". Others, such as business magnate Elon Musk, call for pre-emptive action to mitigate catastrophic risks.
Outside of formal legislation, government agencies have put forward ethical and safety recommendations. In March 2021, the US National Security Commission on Artificial Intelligence reported that advances in AI may make it increasingly important to "assure that systems are aligned with goals and values, including safety, robustness and trustworthiness". Subsequently, the National Institute of Standards and Technology drafted a framework for managing AI Risk, which advises that when "catastrophic risks are present – development and deployment should cease in a safe manner until risks can be sufficiently managed".
In September 2021, the People's Republic of China published ethical guidelines for the use of AI in China, emphasizing that AI decisions should remain under human control and calling for accountability mechanisms. In the same month, The United Kingdom published its 10-year National AI Strategy, which states the British government "takes the long-term risk of non-aligned Artificial General Intelligence, and the unforeseeable changes that it would mean for ... the world, seriously". The strategy describes actions to assess long-term AI risks, including catastrophic risks. The British government held first major global summit on AI safety. This took place on the 1st and 2 November 2023 and was described as "an opportunity for policymakers and world leaders to consider the immediate and future risks of AI and how these risks can be mitigated via a globally coordinated approach".
Government organizations, particularly in the United States, have also encouraged the development of technical AI safety research. The Intelligence Advanced Research Projects Activity initiated the TrojAI project to identify and protect against Trojan attacks on AI systems. The DARPA engages in research on explainable artificial intelligence and improving robustness against adversarial attacks. And the National Science Foundation supports the Center for Trustworthy Machine Learning, and is providing millions of dollars in funding for empirical AI safety research.
In 2024, the United Nations General Assembly adopted the first global resolution on the promotion of “safe, secure and trustworthy” AI systems that emphasized the respect, protection and promotion of human rights in the design, development, deployment and the use of AI.
In May 2024, the Department for Science, Innovation and Technology (DSIT) announced £8.5 million in funding for AI safety research under the Systemic AI Safety Fast Grants Programme, led by Christopher Summerfield and Shahar Avin at the AI Safety Institute, in partnership with UK Research and Innovation. Technology Secretary Michelle Donelan announced the plan at the AI Seoul Summit, stating the goal was to make AI safe across society and that promising proposals could receive further funding. The UK also signed an agreement with 10 other countries and the EU to form an international network of AI safety institutes to promote collaboration and share information and resources. Additionally, the UK AI Safety Institute planned to open an office in San Francisco.


=== Corporate self-regulation ===
AI labs and companies generally abide by safety practices and norms that fall outside of formal legislation. One aim of governance researchers is to shape these norms. Examples of safety recommendations found in the literature include performing third-party auditing, offering bounties for finding failures, sharing AI incidents (an AI incident database was created for this purpose), following guidelines to determine whether to publish research or models, and improving information and cyber security in AI labs.
Companies have also made commitments. Cohere, OpenAI, and AI21 proposed and agreed on "best practices for deploying language models", focusing on mitigating misuse. To avoid contributing to racing-dynamics, OpenAI has also stated in their charter that "if a value-aligned, safety-conscious project comes close to building AGI before we do, we commit to stop competing with and start assisting this project" Also, industry leaders such as CEO of DeepMind Demis Hassabis, director of Facebook AI Yann LeCun have signed open letters such as the Asilomar Principles and the Autonomous Weapons Open Letter.


== See also ==
AI alignment
Artificial intelligence and elections
Artificial intelligence detection software


== References ==


== External links ==
Unsolved Problems in ML Safety
On the Opportunities and Risks of Foundation Models
An Overview of Catastrophic AI Risks
AI Accidents: An Emerging Threat
Engineering a Safer World