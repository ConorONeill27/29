# Action selection

Action selection is a way of characterizing the most basic problem of intelligent systems: what to do next. In artificial intelligence and computational cognitive science, "the action selection problem" is typically associated with intelligent agents and animats—artificial systems that exhibit complex behavior in an agent environment. The term is also sometimes used in ethology or animal behavior.
One problem for understanding action selection is determining the level of abstraction used for specifying an "act". At the most basic level of abstraction, an atomic act could be anything from contracting a muscle cell to provoking a war. Typically for any one action-selection mechanism, the set of possible actions is predefined and fixed.
Most researchers working in this field place high demands on their agents:

The acting agent typically must select its action in dynamic and unpredictable environments.
The agents typically act in real time; therefore they must make decisions in a timely fashion.
The agents are normally created to perform several different tasks. These tasks may conflict for resource allocation (e.g. can the agent put out a fire and deliver a cup of coffee at the same time?)
The environment the agents operate in may include humans, who may make things more difficult for the agent (either intentionally or by attempting to assist.)
The agents themselves are often intended to model animals or humans, and animal/human behaviour is quite complicated.
For these reasons, action selection is not trivial and attracts a good deal of research.


== Characteristics of the action selection problem ==
The main problem for action selection is complexity. Since all computation takes both time and space (in memory), agents cannot possibly consider every option available to them at every instant in time. Consequently, they must be biased, and constrain their search in some way. For AI, the question of action selection is what is the best way to constrain this search? For biology and ethology, the question is how do various types of animals constrain their search? Do all animals use the same approaches? Why do they use the ones they do?
One fundamental question about action selection is whether it is really a problem at all for an agent, or whether it is just a description of an emergent property of an intelligent agent's behavior. However, if we consider how we are going to build an intelligent agent, then it becomes apparent there must be some mechanism for action selection. This mechanism may be highly distributed (as in the case of distributed organisms such as social insect colonies or slime mold) or it may be a special-purpose module.
The action selection mechanism (ASM) determines not only the agent's actions in terms of impact on the world, but also directs its perceptual attention, and updates its memory. These egocentric sorts of actions may in turn result in modifying the agent's basic behavioral capacities, particularly in that updating memory implies some form of machine learning is possible. Ideally, action selection itself should also be able to learn and adapt, but there are many problems of combinatorial complexity and computational tractability that may require restricting the search space for learning.
In AI, an ASM is also sometimes either referred to as an agent architecture or thought of as a substantial part of one.


== AI mechanisms ==
Generally, artificial action selection mechanisms can be divided into several categories: symbol-based systems sometimes known as classical planning, distributed solutions, and reactive or dynamic planning. Some approaches do not fall neatly into any one of these categories. Others are really more about providing scientific models than practical AI control; these last are described further in the next section.


=== Symbolic approaches ===

Early in the history of artificial intelligence, it was assumed that the best way for an agent to choose what to do next would be to compute a probably optimal plan, and then execute that plan. This led to the physical symbol system hypothesis, that a physical agent that can manipulate symbols is necessary and sufficient for intelligence. Many software agents still use this approach for action selection. It normally requires describing all sensor readings, the world, all of ones actions and all of one's goals in some form of predicate logic. Critics of this approach complain that it is too slow for real-time planning and that, despite the proofs, it is still unlikely to produce optimal plans because reducing descriptions of reality to logic is a process prone to errors.
Satisficing is a decision-making strategy that attempts to meet criteria for adequacy, rather than identify an optimal solution. A satisficing strategy may often, in fact, be (near) optimal if the costs of the decision-making process itself, such as the cost of obtaining complete information, are considered in the outcome calculus.
Goal driven architectures – In these symbolic architectures, the agent's behavior is typically described by a set of goals. Each goal can be achieved by a process or an activity, which is described by a prescripted plan. The agent must just decide which process to carry on to accomplish a given goal. The plan can expand to subgoals, which makes the process slightly recursive. Technically, more or less, the plans exploit condition-rules. These architectures are reactive or hybrid. Classical examples of goal-driven architectures are implementable refinements of belief-desire-intention architecture like JAM or IVE.


=== Distributed approaches ===
In contrast to the symbolic approach, distributed systems of action selection actually have no one "box" in the agent that decides the next action. At least in their idealized form, distributed systems have many modules running in parallel and determining the best action based on local expertise. In these idealized systems, overall coherence is expected to emerge somehow, possibly through careful design of the interacting components. This approach is often inspired by artificial neural networks research. In practice, there is almost always some centralized system determining which module is "the most active" or has the most salience. There is evidence real biological brains also have such executive decision systems which evaluate which of the competing systems deserves the most attention, or more properly, has its desired actions disinhibited.

ASMO is an attention-based architecture developed by Mary-Anne Williams, Benjamin Johnston and their PhD student Rony Novianto. It orchestrates a diversity of modular distributed processes that can use their own representations and techniques to perceive the environment, process information, plan actions and propose actions to perform.
Various types of winner-take-all architectures, in which the single selected action takes full control of the motor system
Spreading activation including Maes Nets (ANA)
Extended Rosenblatt & Payton is a spreading activation architecture developed by Toby Tyrrell in 1993. The agent's behavior is stored in the form of a hierarchical connectionism network, which Tyrrell named free-flow hierarchy. Recently exploited for example by de Sevin & Thalmann (2005) or Kadleček (2001).
Behavior based AI, was a response to the slow speed of robots using symbolic action selection techniques. In this form, separate modules respond to different stimuli and generate their own responses. In the original form, the subsumption architecture, these consisted of different layers that could monitor and suppress each other's inputs and outputs.
Creatures are virtual pets from a computer game driven by three-layered neural network, which is adaptive. Their mechanism is reactive since the network at every time step determines the task that has to be performed by the pet. The network is described well in the paper of Grand et al. (1997) and in The Creatures Developer Resources. See also the Creatures Wiki.


=== Dynamic planning approaches ===
Because purely distributed systems are difficult to construct, many researchers have turned to using explicit hard-coded plans to determine the priorities of their system.
Dynamic or reactive planning methods compute just one next action in every instant based on the current context and pre-scripted plans. In contrast to classical planning methods, reactive or dynamic approaches do not suffer combinatorial explosion. On the other hand, they are sometimes seen as too rigid to be considered strong AI, since the plans are coded in advance. At the same time, natural intelligence can be rigid in some contexts although it is fluid and able to adapt in others.
Example dynamic planning mechanisms include:

Finite-state machines These are reactive architectures used mostly for computer game agents, in particular for first-person shooters bots, or for virtual movie actors. Typically, the state machines are hierarchical. For concrete game examples, see Halo 2 bots paper by Damian Isla (2005) or the Master's Thesis about Quake III bots by Jan Paul van Waveren (2001). For a movie example, see Softimage.
Other structured reactive plans tend to look a little more like conventional plans, often with ways to represent hierarchical and sequential structure. Some, such as PRS's 'acts', have support for partial plans. Many agent architectures from the mid-1990s included such plans as a "middle layer" that provided organization for low-level behavior modules while being directed by a higher level real-time planner. Despite this supposed interoperability with automated planners, most structured reactive plans are hand coded (Bryson 2001, ch. 3). Examples of structured reactive plans include James Firby's RAP System and the Nils Nilsson's Teleo-reactive plans. PRS, RAPs & TRP are no longer developed or supported. One still-active (as of 2006) descendant of this approach is the Parallel-rooted Ordered Slip-stack Hierarchical (or POSH) action selection system, which is a part of Joanna Bryson's Behaviour Oriented Design.
Sometimes to attempt to address the perceived inflexibility of dynamic planning, hybrid techniques are used. In these, a more conventional AI planning system searches for new plans when the agent has spare time, and updates the dynamic plan library when it finds good solutions. The important aspect of any such system is that when the agent needs to select an action, some solution exists that can be used immediately (see further anytime algorithm).


=== Others ===
CogniTAO is a decision making engine it based on BDI (belief-desire-intention), it includes built in teamwork capabilities.
Soar is a symbolic cognitive architecture. It is based on condition-action rules known as productions. Programmers can use the Soar development toolkit for building both reactive and planning agents or any compromise between these two extremes.
Excalibur was a research project led by Alexander Nareyek featuring any-time planning agents for computer games. The architecture is based on structural constraint satisfaction, which is an advanced artificial intelligence technique.
ACT-R is similar to Soar. It includes a Bayesian learning system to help prioritize the productions.
ABL/Hap
Fuzzy architectures The fuzzy approach in action selection produces more smooth behavior than can be produced by architectures exploiting Boolean condition-action rules (like Soar or POSH). These architectures are mostly reactive and symbolic.


== Theories of action selection in nature ==
Many dynamic models of artificial action selection were originally inspired by research in ethology. In particular, Konrad Lorenz and Nikolaas Tinbergen provided the idea of an innate releasing mechanism to explain instinctive behaviors (fixed action patterns). Influenced by the ideas of William McDougall, Lorenz developed this into a "psychohydraulic" model of the motivation of behavior. In ethology, these ideas were influential in the 1960s, but they are now regarded as outdated because of their use of an energy flow metaphor; the nervous system and the control of behavior are now normally treated as involving information transmission rather than energy flow. Dynamic plans and neural networks are more similar to information transmission while spreading activation is more similar to the diffuse control of emotional or hormonal systems.
Stan Franklin has proposed that action selection is the right perspective to take in understanding the role and evolution of mind. See his page on the action selection paradigm. Archived 2006-10-09 at the Wayback Machine


=== AI models of neural action selection ===
Some researchers create elaborate models of neural action selection. See for example:

The Computational Cognitive Neuroscience Lab (CU Boulder).
The Adaptive Behaviour Research Group (Sheffield).


=== Catecholaminergic Neuron Electron Transport (CNET) ===
The locus coeruleus (LC) is one of the primary sources of noradrenaline in the brain and has been associated with selection of cognitive processing, such as attention and behavioral tasks. The substantia nigra pars compacta (SNc) is one of the primary sources of dopamine in the brain, and has been associated with action selection, primarily as part of the basal ganglia.  CNET is a hypothesized neural signaling mechanism in the SNc and LC (which are catecholaminergic neurons), that could assist with action selection by routing energy between neurons in each group as part of action selection, to help one or more neurons in each group to reach action potential. It was first proposed in 2018, and is based on a number of physical parameters of those neurons, which can be broken down into three major components:
1) Ferritin and neuromelanin are present in high concentrations in those neurons, but it was unknown in 2018 whether they formed structures that would be capable of transmitting electrons over relatively long distances on the scale of microns between the largest of those neurons, which had not been previously proposed or observed. Those structures would also need to provide a routing or switching function, which had also not previously been proposed or observed.  Evidence of the presence of ferritin and neuromelanin structures in those neurons and their ability to both conduct electrons by sequential tunneling and to route/switch the path of the neurons was subsequently obtained.
2) ) The axons of large SNc neurons were known to have extensive arbors, but it was unknown whether post-synaptic activity at the synapses of those axons would raise the membrane potential of those neurons sufficiently to cause the electrons to be routed to the neuron or neurons with the most post-synaptic activity for the purpose of action selection.  At the time, prevailing explanations of the purpose of those neurons was that they did not mediate action selection and were only modulatory and non-specific. Prof. Pascal Kaeser of Harvard Medical School subsequently obtained evidence that large SNc neurons can be temporally and spatially specific and mediate action selection.  Other evidence indicates that the large LC axons have similar behavior.
3) Several sources of electrons or excitons to provide the energy for the mechanism were hypothesized in 2018 but had not been observed at that time.  Dioxetane cleavage (which can occur during somatic dopamine metabolism by quinone degradation of melanin) was contemporaneously proposed to generate high energy triplet state electrons by Prof. Doug Brash at Yale, which could provide a source for electrons for the CNET mechanism.
While evidence of a number of physical predictions of the CNET hypothesis has thus been obtained, evidence of whether the hypothesis itself is correct has not been sought. One way to try to determine whether the CNET mechanism is present in these neurons would be to use quantum dot fluorophores and optical probes to determine whether electron tunneling associated with ferritin in the neurons is occurring in association with specific actions.


== See also ==
Action description language – Robot programming language
Artificial intelligence in video games – AI used for video games, usually non-player characters
Cognitive robotics – robot with processing architecture that will allow it to learnPages displaying wikidata descriptions as a fallback
Expert system – Computer system emulating the decision-making ability of a human expert
Inference engine – Component of artificial intelligence systems
Intelligent agent – Software agent which acts autonomously
OPS5 – rule-based or production system computer languagePages displaying wikidata descriptions as a fallback
Production system – computer program typically used to provide some form of artificial intelligencePages displaying wikidata descriptions as a fallback
Reinforcement learning – Field of machine learning
Rete algorithm – Pattern matching algorithm
Utility system – modeling approach for video gamesPages displaying wikidata descriptions as a fallback


== References ==


== Further reading ==
Bratman, M.: Intention, plans, and practical reason. Cambridge, Mass: Harvard University Press (1987)
Brom, C., Lukavský, J., Šerý, O., Poch, T., Šafrata, P.: Affordances and level-of-detail AI for virtual humans. In: Proceedings of Game Set and Match 2, Delft (2006)
Bryson, J.: Intelligence by Design: Principles of Modularity and Coordination for Engineering Complex Adaptive Agents. PhD thesis, Massachusetts Institute of Technology (2001)
Champandard, A. J.: AI Game Development: Synthetic Creatures with learning and Reactive Behaviors. New Riders, USA (2003)
Grand, S., Cliff, D., Malhotra, A.: Creatures: Artificial life autonomous software-agents for home entertainment. In: Johnson, W. L. (eds.): Proceedings of the First International Conference on Autonomous Agents. ACM press (1997) 22-29
Huber, M. J.: JAM: A BDI-theoretic mobile agent architecture. In: Proceedings of the Third International Conference on Autonomous Agents (Agents'99). Seattle (1999) 236-243
Isla, D.: Handling complexity in Halo 2. In: Gamastura online, 03/11 (2005) Archived 2006-01-08 at the Wayback Machine
Maes, P.: The agent network architecture (ANA). In: SIGART Bulletin, 2 (4), pages 115–120 (1991)
Nareyek, A. Excalibur project
Reynolds, C. W. Flocks, Herds, and Schools: A Distributed Behavioral Model. In: Computer Graphics, 21(4) (SIGGRAPH '87 Conference Proceedings) (1987) 25–34.
de Sevin, E. Thalmann, D.:A motivational Model of Action Selection for Virtual Humans. In: Computer Graphics International (CGI), IEEE Computer SocietyPress, New York (2005)
Tyrrell, T.: Computational Mechanisms for Action Selection. Ph.D. Dissertation. Centre for Cognitive Science, University of Edinburgh (1993)
van Waveren, J. M. P.: The Quake III Arena Bot. Master thesis. Faculty ITS, University of Technology Delft (2001)
Wooldridge, M. An Introduction to MultiAgent Systems. John Wiley & Sons (2002)


== External links ==
The University of Memphis: Agents by action selection Archived 2006-04-18 at the Wayback Machine
Michael Wooldridge: Introduction to agents and their action selection mechanisms
Cyril Brom: Slides on a course on action selection of artificial beings
Soar project. University of Michigan.
Modelling natural action selection, a special issue published by The Royal Society - Philosophical Transactions of the Royal Society