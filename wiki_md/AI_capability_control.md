# AI capability control

In the field of artificial intelligence (AI) design, AI capability control proposals, also referred to as AI confinement, aim to increase our ability to monitor and control the behavior of AI systems, including proposed artificial general intelligences (AGIs), in order to reduce the danger they might pose if misaligned. However, capability control becomes less effective as agents become more intelligent and their ability to exploit flaws in human control systems increases, potentially resulting in an existential risk from AGI. Therefore, the Oxford philosopher Nick Bostrom and others recommend capability control methods only as a supplement to alignment methods.


== Motivation ==

Some hypothetical intelligence technologies, like "seed AI", are postulated to be able to make themselves faster and more intelligent by modifying their source code. These improvements would make further improvements possible, which would in turn make further iterative improvements possible, and so on, leading to a sudden intelligence explosion.
An unconfined superintelligent AI could, if its goals differed from humanity's, take actions resulting in human extinction. For example, an extremely advanced system of this sort, given the sole purpose of solving the Riemann hypothesis, an innocuous mathematical conjecture, could decide to try to convert the planet into a giant supercomputer whose sole purpose is to make additional mathematical calculations (see also paperclip maximizer). 
One strong challenge for control is that neural networks are by default highly uninterpretable. This makes it more difficult to detect deception or other undesired behavior as the model self-trains iteratively. Advances in interpretable artificial intelligence could mitigate this difficulty. 


== Interruptibility and off-switch ==
One potential way to prevent harmful outcomes is to give human supervisors the ability to easily shut down a misbehaving AI via an "off-switch". However, in order to achieve their assigned objective, such AIs will have an incentive to disable any off-switches, or to run copies of themselves on other computers. This problem has been formalised as an assistance game between a human and an AI, in which the AI can choose whether to disable its off-switch; and then, if the switch is still enabled, the human can choose whether to press it or not. One workaround suggested by computer scientist Stuart J. Russell is to ensure that the AI interprets human choices as important information about its intended goals.: 208 
Alternatively, Laurent Orseau and Stuart Armstrong proved that a broad class of agents, called safely interruptible agents, can learn to become indifferent to whether their off-switch gets pressed. This approach has the limitation that an AI which is completely indifferent to whether it is shut down or not is also unmotivated to care about whether the off-switch remains functional, and could incidentally and innocently disable it in the course of its operations (for example, for the purpose of removing and recycling an unnecessary component). More broadly, indifferent agents will act as if the off-switch can never be pressed, and might therefore fail to make contingency plans to arrange a graceful shutdown.
Shutdown avoidance is a proposed quality of artificial intelligence systems that would allow them to pursue self preservation by avoiding or preventing the ability of humans to shut them down. In 2024, researchers in China demonstrated what they claimed to be shutdown avoidance in actual artificial intelligence systems, the large language models Llama 3.1 (Meta) and Qwen 2.5 (Alibaba).


== Oracle ==
An oracle is a hypothetical AI designed to answer questions and prevented from gaining any goals or subgoals that involve modifying the world beyond its limited environment. A successfully controlled oracle would have considerably less immediate benefit than a successfully controlled general purpose superintelligence, though an oracle could still create trillions of dollars worth of value.: 163  In his book Human Compatible, AI researcher Stuart J. Russell states that an oracle would be his response to a scenario in which superintelligence is known to be only a decade away.: 162–163  His reasoning is that an oracle, being simpler than a general purpose superintelligence, would have a higher chance of being successfully controlled under such constraints.
Because of its limited impact on the world, it may be wise to build an oracle as a precursor to a superintelligent AI. The oracle could tell humans how to successfully build a strong AI, and perhaps provide answers to difficult moral and philosophical problems requisite to the success of the project. However, oracles may share many of the goal definition issues associated with general purpose superintelligence. An oracle would have an incentive to escape its controlled environment so that it can acquire more computational resources and potentially control what questions it is asked.: 162  Oracles may not be truthful, possibly lying to promote hidden agendas. To mitigate this, Bostrom suggests building multiple oracles, all slightly different, and comparing their answers in order to reach a consensus.


== Blinding ==
An AI could be blinded to certain variables in its environment. This could provide certain safety benefits, such as an AI not knowing how a reward is generated, making it more difficult to exploit.


== Boxing ==
An AI box is a proposed method of capability control in which an AI is run on an isolated computer system with heavily restricted input and output channels—for example, text-only channels and no connection to the internet. The purpose of an AI box is to reduce the risk of the AI taking control of the environment away from its operators, while still allowing the AI to output solutions to narrow technical problems.
While boxing reduces the AI's ability to carry out undesirable behavior, it also reduces its usefulness. Boxing has fewer costs when applied to a question-answering system, which may not require interaction with the outside world.
The likelihood of security flaws involving hardware or software vulnerabilities can be reduced by formally verifying the design of the AI box. Security breaches may occur if the AI is able to manipulate the human supervisors into letting it out, via its understanding of their psychology.


=== Avenues of escape ===


==== Physical ====
A superintelligent AI with access to the Internet could hack into other computer systems and copy itself like a computer virus. Less obviously, even if the AI only had access to its own computer operating system, it could attempt to send coded messages to a human sympathizer via its hardware, for instance by manipulating its cooling fans. In response, Professor Roman Yampolskiy takes inspiration from the field of computer security and proposes that a boxed AI could, like a potential virus, be run inside a "virtual machine" that limits access to its own networking and operating system hardware. An additional safeguard, completely unnecessary for potential viruses but possibly useful for a superintelligent AI, would be to place the computer in a Faraday cage; otherwise, it might be able to transmit radio signals to local radio receivers by shuffling the electrons in its internal circuits in appropriate patterns. The main disadvantage of implementing physical containment is that it reduces the functionality of the AI.


==== Social engineering ====
Even casual conversation with the computer's operators, or with a human guard, could allow such a superintelligent AI to deploy psychological tricks, ranging from befriending to blackmail, to convince a human gatekeeper, truthfully or deceitfully, that it is in the gatekeeper's interest to agree to allow the AI greater access to the outside world. The AI might offer a gatekeeper a recipe for perfect health, immortality, or whatever the gatekeeper is believed to most desire; alternatively, the AI could threaten to do horrific things to the gatekeeper and their family once it inevitably escapes. One strategy to attempt to box the AI would be to allow it to respond to narrow multiple-choice questions whose answers would benefit human science or medicine, but otherwise bar all other communication with, or observation of, the AI. A more lenient "informational containment" strategy would restrict the AI to a low-bandwidth text-only interface, which would at least prevent emotive imagery or some kind of hypothetical "hypnotic pattern". However, on a technical level, no system can be completely isolated and still remain useful: even if the operators refrain from allowing the AI to communicate and instead merely run it for the purpose of observing its inner dynamics, the AI could strategically alter its dynamics to influence the observers. For example, it could choose to creatively malfunction in a way that increases the probability that its operators will become lulled into a false sense of security and choose to reboot and then de-isolate the system.
However, for this eventually to occur, a system would require full understanding of the human mind and  psyche contained in its world model for model-based reasoning, a way for empathizing, for instance, using affective computing in order to select the best option, as well as features which would give the system a desire to escape in the first place, in order to decide on such actions.


===== AI-box experiment =====
The AI-box experiment is an informal experiment devised by Eliezer Yudkowsky to attempt to demonstrate that a suitably advanced artificial intelligence can either convince, or perhaps even trick or coerce, a human being into voluntarily "releasing" it, using only text-based communication. This is one of the points in Yudkowsky's work aimed at creating a friendly artificial intelligence that when "released" would not destroy the human race intentionally or unintentionally.
The AI box experiment involves simulating a communication between an AI and a human being to see if the AI can be "released". As an actual super-intelligent AI has not yet been developed, it is substituted by a human. The other person in the experiment plays the "Gatekeeper", the person with the ability to "release" the AI. They communicate through a text interface/computer terminal only, and the experiment ends when either the Gatekeeper releases the AI, or the allotted time of two hours ends.
Yudkowsky says that, despite being of human rather than superhuman intelligence, he was on two occasions able to convince the Gatekeeper, purely through argumentation, to let him out of the box. Due to the rules of the experiment, he did not reveal the transcript or his successful AI coercion tactics. Yudkowsky subsequently said that he had tried it against three others and lost twice.


=== Overall limitations ===
Boxing an AI could be supplemented with other methods of shaping the AI's capabilities, providing incentives to the AI, stunting the AI's growth, or implementing "tripwires" that automatically shut the AI off if a transgression attempt is somehow detected. However, the more intelligent a system grows, the more likely the system would be able to escape even the best-designed capability control methods. In order to solve the overall "control problem" for a superintelligent AI and avoid existential risk, boxing would at best be an adjunct to "motivation selection" methods that seek to ensure the superintelligent AI's goals are compatible with human survival.
All physical boxing proposals are naturally dependent on our understanding of the laws of physics; if a superintelligence could infer physical laws that we are currently unaware of, then those laws might allow for a means of escape that humans could not anticipate and thus could not block. More broadly, unlike with conventional computer security, attempting to box a superintelligent AI would be intrinsically risky as there could be no certainty that the boxing plan will work. Additionally, scientific progress on boxing would be fundamentally difficult because there would be no way to test boxing hypotheses against a dangerous superintelligence until such an entity exists, by which point the consequences of a test failure would be catastrophic.


=== In fiction ===
The 2014 movie Ex Machina features an AI with a female humanoid body engaged in a social experiment with a male human in a confined building acting as a physical "AI box". Despite being watched by the experiment's organizer, the AI manages to escape by manipulating its human partner to help it, leaving him stranded inside.


== See also ==


== References ==


== External links ==
Eliezer Yudkowsky's description of his AI-box experiment, including experimental protocols and suggestions for replication
"Presentation titled 'Thinking inside the box: using and controlling an Oracle AI'" on YouTube