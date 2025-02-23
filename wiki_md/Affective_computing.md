# Affective computing

Affective computing is the study and development of systems and devices that can recognize, interpret, process, and simulate human affects. It is an interdisciplinary field spanning computer science, psychology, and cognitive science. While some core ideas in the field may be traced as far back as to early philosophical inquiries into emotion, the more modern branch of computer science originated with Rosalind Picard's 1995 paper entitled "Affective Computing" and her 1997 book of the same name published by MIT Press. One of the motivations for the research is the ability to give machines emotional intelligence, including to simulate empathy. The machine should interpret the emotional state of humans and adapt its behavior to them, giving an appropriate response to those emotions.


== Areas ==


=== Detecting and recognizing emotional information ===
Detecting emotional information usually begins with passive sensors that capture data about the user's physical state or behavior without interpreting the input. The data gathered is analogous to the cues humans use to perceive emotions in others. For example, a video camera might capture facial expressions, body posture, and gestures, while a microphone might capture speech. Other sensors detect emotional cues by directly measuring physiological data, such as skin temperature and galvanic resistance.
Recognizing emotional information requires the extraction of meaningful patterns from the gathered data. This is done using machine learning techniques that process different modalities, such as speech recognition, natural language processing, or facial expression detection.  The goal of most of these techniques is to produce labels that would match the labels a human perceiver would give in the same situation:  For example, if a person makes a facial expression furrowing their brow, then the computer vision system might be taught to label their face as appearing "confused" or as "concentrating" or "slightly negative" (as opposed to positive, which it might say if they were smiling in a happy-appearing way).  These labels may or may not correspond to what the person is actually feeling.


=== Emotion in machines ===
Another area within affective computing is the design of computational devices proposed to exhibit either innate emotional capabilities or that are capable of convincingly simulating emotions. A more practical approach, based on current technological capabilities, is the simulation of emotions in conversational agents in order to enrich and facilitate interactivity between human and machine.
Marvin Minsky, one of the pioneering computer scientists in artificial intelligence, relates emotions to the broader issues of machine intelligence stating in The Emotion Machine that emotion is "not especially different from the processes that we call 'thinking.'" The innovative approach "digital humans" or virtual humans includes an attempt to give these programs, which simulate humans, the emotional dimension as well, including reactions in accordance with the reaction that a real person would react in a certain emotionally stimulating situation as well as facial expressions and gestures.
Emotion in machines often refers to emotion in computational, often AI-based, systems. As a result, the terms 'emotional AI' and 'emotion AI' are being used.


== Technologies ==
In psychology, cognitive science, and in neuroscience, there have been two main approaches for describing how humans perceive and classify emotion: continuous or categorical. The continuous approach tends to use dimensions such as negative vs. positive, calm vs. aroused.
The categorical approach tends to use discrete classes such as happy, sad, angry, fearful, surprise, disgust.  Different kinds of machine learning regression and classification models can be used for having machines produce continuous or discrete labels.  Sometimes models are also built that allow combinations across the categories, e.g. a happy-surprised face or a fearful-surprised face.
The following sections consider many of the kinds of input data used for the task of emotion recognition.


=== Emotional speech ===
Various changes in the autonomic nervous system can indirectly alter a person's speech, and affective technologies can leverage this information to recognize emotion. For example, speech produced in a state of fear, anger, or joy becomes fast, loud, and precisely enunciated, with a higher and wider range in pitch, whereas emotions such as tiredness, boredom, or sadness tend to generate slow, low-pitched, and slurred speech. Some emotions have been found to be more easily computationally identified, such as anger or approval.
Emotional speech processing technologies recognize the user's emotional state using computational analysis of speech features. Vocal parameters and prosodic features such as pitch variables and speech rate can be analyzed through pattern recognition techniques.
Speech analysis is an effective method of identifying affective state, having an average reported accuracy of 70 to 80% in research from 2003 and 2006. These systems tend to outperform average human accuracy (approximately 60%) but are less accurate than systems which employ other modalities for emotion detection, such as physiological states or facial expressions. However, since many speech characteristics are independent of semantics or culture, this technique is considered to be a promising route for further research.


==== Algorithms ====
The process of speech/text affect detection requires the creation of a reliable database, knowledge base, or vector space model, broad enough to fit every need for its application, as well as the selection of a successful classifier which will allow for quick and accurate emotion identification.
As of 2010, the most frequently used classifiers were linear discriminant classifiers (LDC), k-nearest neighbor (k-NN), Gaussian mixture model (GMM), support vector machines (SVM), artificial neural networks (ANN), decision tree algorithms and hidden Markov models (HMMs). Various studies showed that choosing the appropriate classifier can significantly enhance the overall performance of the system. The list below gives a brief description of each algorithm:

LDC – Classification happens based on the value obtained from the linear combination of the feature values, which are usually provided in the form of vector features.
k-NN – Classification happens by locating the object in the feature space, and comparing it with the k nearest neighbors (training examples). The majority vote decides on the classification.
GMM – is a probabilistic model used for representing the existence of subpopulations within the overall population. Each sub-population is described using the mixture distribution, which allows for classification of observations into the sub-populations.
SVM – is a type of (usually binary) linear classifier which decides in which of the two (or more) possible classes, each input may fall into.
ANN – is a mathematical model, inspired by biological neural networks, that can better grasp possible non-linearities of the feature space.
Decision tree algorithms – work based on following a decision tree in which leaves represent the classification outcome, and branches represent the conjunction of subsequent features that lead to the classification.
HMMs – a statistical Markov model in which the states and state transitions are not directly available to observation. Instead, the series of outputs dependent on the states are visible. In the case of affect recognition, the outputs represent the sequence of speech feature vectors, which allow the deduction of states' sequences through which the model progressed. The states can consist of various intermediate steps in the expression of an emotion, and each of them has a probability distribution over the possible output vectors. The states' sequences allow us to predict the affective state which we are trying to classify, and this is one of the most commonly used techniques within the area of speech affect detection.
It is proved that having enough acoustic evidence available the emotional state of a person can be classified by a set of majority voting classifiers. The proposed set of classifiers is based on three main classifiers: kNN, C4.5 and SVM-RBF Kernel. This set achieves better performance than each basic classifier taken separately. It is compared with two other sets of classifiers: one-against-all (OAA) multiclass SVM with Hybrid kernels and the set of classifiers which consists of the following two basic classifiers: C5.0 and Neural Network. The proposed variant achieves better performance than the other two sets of classifiers.


==== Databases ====
The vast majority of present systems are data-dependent. This creates one of the biggest challenges in detecting emotions based on speech, as it implicates choosing an appropriate database used to train the classifier. Most of the currently possessed data was obtained from actors and is thus a representation of archetypal emotions. Those so-called acted databases are usually based on the Basic Emotions theory (by Paul Ekman), which assumes the existence of six basic emotions (anger, fear, disgust, surprise, joy, sadness), the others simply being a mix of the former ones. Nevertheless, these still offer high audio quality and balanced classes (although often too few), which contribute to high success rates in recognizing emotions.
However, for real life application, naturalistic data is preferred. A naturalistic database can be produced by observation and analysis of subjects in their natural context. Ultimately, such database should allow the system to recognize emotions based on their context as well as work out the goals and outcomes of the interaction. The nature of this type of data allows for authentic real life implementation, due to the fact it describes states naturally occurring during the human–computer interaction (HCI).
Despite the numerous advantages which naturalistic data has over acted data, it is difficult to obtain and usually has low emotional intensity. Moreover, data obtained in a natural context has lower signal quality, due to surroundings noise and distance of the subjects from the microphone. The first attempt to produce such database was the FAU Aibo Emotion Corpus for CEICES (Combining Efforts for Improving Automatic Classification of Emotional User States), which was developed based on a realistic context of children (age 10–13) playing with Sony's Aibo robot pet. Likewise, producing one standard database for all emotional research would provide a method of evaluating and comparing different affect recognition systems.


==== Speech descriptors ====
The complexity of the affect recognition process increases with the number of classes (affects) and speech descriptors used within the classifier. It is, therefore, crucial to select only the most relevant features in order to assure the ability of the model to successfully identify emotions, as well as increasing the performance, which is particularly significant to real-time detection. The range of possible choices is vast, with some studies mentioning the use of over 200 distinct features. It is crucial to identify those that are redundant and undesirable in order to optimize the system and increase the success rate of correct emotion detection. The most common speech characteristics are categorized into the following groups.

Frequency characteristics
Accent shape – affected by the rate of change of the fundamental frequency.
Average pitch – description of how high/low the speaker speaks relative to the normal speech.
Contour slope – describes the tendency of the frequency change over time, it can be rising, falling or level.
Final lowering – the amount by which the frequency falls at the end of an utterance.
Pitch range – measures the spread between the maximum and minimum frequency of an utterance.
Time-related features:
Speech rate – describes the rate of words or syllables uttered over a unit of time
Stress frequency – measures the rate of occurrences of pitch accented utterances
Voice quality parameters and energy descriptors:
Breathiness – measures the aspiration noise in speech
Brilliance – describes the dominance of high or low frequencies In the speech
Loudness – measures the amplitude of the speech waveform, translates to the energy of an utterance
Pause Discontinuity – describes the transitions between sound and silence
Pitch Discontinuity – describes the transitions of the fundamental frequency.


=== Facial affect detection ===
The detection and processing of facial expression are achieved through various methods such as optical flow, hidden Markov models, neural network processing or active appearance models. More than one modality can be combined or fused (multimodal recognition, e.g. facial expressions and speech prosody, facial expressions and hand gestures, or facial expressions with speech and text for multimodal data and metadata analysis) to provide a more robust estimation of the subject's emotional state. 


==== Facial expression databases ====

Creation of an emotion database is a difficult and time-consuming task. However, database creation is an essential step in the creation of a system that will recognize human emotions. Most of the publicly available emotion databases include posed facial expressions only. In posed expression databases, the participants are asked to display different basic emotional expressions, while in spontaneous expression database, the expressions are natural. Spontaneous emotion elicitation requires significant effort in the selection of proper stimuli which can lead to a rich display of intended emotions. Secondly, the process involves tagging of emotions by trained individuals manually which makes the databases highly reliable. Since perception of expressions and their intensity is subjective in nature, the annotation by experts is essential for the purpose of validation.
Researchers work with three types of databases, such as a database of peak expression images only, a database of image sequences portraying an emotion from neutral to its peak, and video clips with emotional annotations. Many facial expression databases have been created and made public for expression recognition purpose. Two of the widely used databases are CK+ and JAFFE.


==== Emotion classification ====

By doing cross-cultural research in Papua, New Guinea, on the Fore Tribesmen, at the end of the 1960s, Paul Ekman proposed the idea that facial expressions of emotion are not culturally determined, but universal. Thus, he suggested that they are biological in origin and can, therefore, be safely and correctly categorized.
He therefore officially put forth six basic emotions, in 1972:

Anger
Disgust
Fear
Happiness
Sadness
Surprise
However, in the 1990s Ekman expanded his list of basic emotions, including a range of positive and negative emotions not all of which are encoded in facial muscles. The newly included emotions are:

Amusement
Contempt
Contentment
Embarrassment
Excitement
Guilt
 Pride in achievement
Relief
Satisfaction
Sensory pleasure
Shame


==== Facial Action Coding System ====

A system has been conceived by psychologists in order to formally categorize the physical expression of emotions on faces. The central concept of the Facial Action Coding System, or FACS, as created by Paul Ekman and Wallace V. Friesen in 1978 based on earlier work by Carl-Herman Hjortsjö are action units (AU).
They are, basically, a contraction or a relaxation of one or more muscles. Psychologists have proposed the following classification of six basic emotions, according to their action units ("+" here mean "and"):


==== Challenges in facial detection ====
As with every computational practice, in affect detection by facial processing, some obstacles need to be surpassed, in order to fully unlock the hidden potential of the overall algorithm or method employed. In the early days of almost every kind of AI-based detection (speech recognition, face recognition, affect recognition), the accuracy of modeling and tracking has been an issue. As hardware evolves, as more data are collected and as new discoveries are made and new practices introduced, this lack of accuracy fades, leaving behind noise issues. However, methods for noise removal exist including neighborhood averaging, linear Gaussian smoothing, median filtering, or newer methods such as the Bacterial Foraging Optimization Algorithm.
Other challenges include

The fact that posed expressions, as used by most subjects of the various studies, are not natural, and therefore algorithms trained on these may not apply to natural expressions.
The lack of rotational movement freedom. Affect detection works very well with frontal use, but upon rotating the head more than 20 degrees, "there've been problems".
Facial expressions do not always correspond to an underlying emotion that matches them (e.g. they can be posed or faked, or a person can feel emotions but maintain a "poker face").
FACS did not include dynamics, while dynamics can help disambiguate (e.g. smiles of genuine happiness tend to have different dynamics than "try to look happy" smiles.)
The FACS combinations do not correspond in a 1:1 way with the emotions that the psychologists originally proposed  (note that this lack of a 1:1 mapping also occurs in speech recognition with homophones and homonyms and many other sources of ambiguity, and may be mitigated by bringing in other channels of information).
Accuracy of recognition is improved by adding context; however, adding context and other modalities increases computational cost and complexity


=== Body gesture ===

Gestures could be efficiently used as a means of detecting a particular emotional state of the user, especially when used in conjunction with speech and face recognition. Depending on the specific action, gestures could be simple reflexive responses, like lifting your shoulders when you don't know the answer to a question, or they could be complex and meaningful as when communicating with sign language. Without making use of any object or surrounding environment, we can wave our hands, clap or beckon. On the other hand, when using objects, we can point at them, move, touch or handle these. A computer should be able to recognize these, analyze the context and respond in a meaningful way, in order to be efficiently used for Human–Computer Interaction.
There are many proposed methods to detect the body gesture. Some literature differentiates 2 different approaches in gesture recognition: a 3D model based and an appearance-based. The foremost method makes use of 3D information of key elements of the body parts in order to obtain several important parameters, like palm position or joint angles. On the other hand, appearance-based systems use images or videos to for direct interpretation. Hand gestures have been a common focus of body gesture detection methods.


=== Physiological monitoring ===
This could be used to detect a user's affective state by monitoring and analyzing their physiological signs. These signs range from changes in heart rate and skin conductance to minute contractions of the facial muscles and changes in facial blood flow. This area is gaining momentum and we are now seeing real products that implement the techniques. The four main physiological signs that are usually analyzed are blood volume pulse, galvanic skin response, facial electromyography, and facial color patterns.


==== Blood volume pulse ====


===== Overview =====
A subject's blood volume pulse (BVP) can be measured by a process called photoplethysmography, which produces a graph indicating blood flow through the extremities. The peaks of the waves indicate a cardiac cycle where the heart has pumped blood to the extremities. If the subject experiences fear or is startled, their heart usually 'jumps' and beats quickly for some time, causing the amplitude of the cardiac cycle to increase. This can clearly be seen on a photoplethysmograph when the distance between the trough and the peak of the wave has decreased. As the subject calms down, and as the body's inner core expands, allowing more blood to flow back to the extremities, the cycle will return to normal.


===== Methodology =====
Infra-red light is shone on the skin by special sensor hardware, and the amount of light reflected is measured. The amount of reflected and transmitted light correlates to the BVP as light is absorbed by hemoglobin which is found richly in the bloodstream.


===== Disadvantages =====
It can be cumbersome to ensure that the sensor shining an infra-red light and monitoring the reflected light is always pointing at the same extremity, especially seeing as subjects often stretch and readjust their position while using a computer.
There are other factors that can affect one's blood volume pulse. As it is a measure of blood flow through the extremities, if the subject feels hot, or particularly cold, then their body may allow more, or less, blood to flow to the extremities, all of this regardless of the subject's emotional state.


==== Facial electromyography ====

Facial electromyography is a technique used to measure the electrical activity of the facial muscles by amplifying the tiny electrical impulses that are generated by muscle fibers when they contract.
The face expresses a great deal of emotion, however, there are two main facial muscle groups that are usually studied to detect emotion:
The corrugator supercilii muscle, also known as the 'frowning' muscle, draws the brow down into a frown, and therefore is the best test for negative, unpleasant emotional response.↵The zygomaticus major muscle is responsible for pulling the corners of the mouth back when you smile, and therefore is the muscle used to test for a positive emotional response.


==== Galvanic skin response ====

Galvanic skin response (GSR) is an outdated term for a more general phenomenon known as [Electrodermal Activity] or EDA.  EDA is a general phenomena whereby the skin's electrical properties change.  The skin is innervated by the [sympathetic nervous system], so measuring its resistance or conductance provides a way to quantify small changes in the sympathetic branch of the autonomic nervous system.  As the sweat glands are activated, even before the skin feels sweaty, the level of the EDA can be captured (usually using conductance) and used to discern small changes in autonomic arousal.  The more aroused a subject is, the greater the skin conductance tends to be.
Skin conductance is often measured using two small silver-silver chloride electrodes placed somewhere on the skin and applying a small voltage between them. To maximize comfort and reduce irritation the electrodes can be placed on the wrist, legs, or feet, which leaves the hands fully free for daily activity.


==== Facial color ====


===== Overview =====
The surface of the human face is innervated with a large network of blood vessels. Blood flow variations in these vessels yield visible color changes on the face. Whether or not facial emotions activate facial muscles, variations in blood flow, blood pressure, glucose levels, and other changes occur. Also, the facial color signal is independent from that provided by facial muscle movements.


===== Methodology =====
Approaches are based on facial color changes. Delaunay triangulation is used to create the triangular local areas. Some of these triangles which define the interior of the mouth and eyes (sclera and iris) are removed. Use the left triangular areas’ pixels to create feature vectors. It shows that converting the pixel color of the standard RGB color space to a color space such as oRGB color space or LMS channels perform better when dealing with faces. So, map the above vector onto the better color space and decompose into red-green and yellow-blue channels. Then use deep learning methods to find equivalent emotions.


=== Visual aesthetics ===
Aesthetics, in the world of art and photography, refers to the principles of the nature and appreciation of beauty. Judging beauty and other aesthetic qualities is a highly subjective task. Computer scientists at Penn State treat the challenge of automatically inferring the aesthetic quality of pictures using their visual content as a machine learning problem, with a peer-rated on-line photo sharing website as a data source. They extract certain visual features based on the intuition that they can discriminate between aesthetically pleasing and displeasing images.


== Potential applications ==


=== Education ===
Affection influences learners' learning state. Using affective computing technology, computers can judge the learners' affection and learning state by recognizing their facial expressions. In education, the teacher can use the analysis result to understand the student's learning and accepting ability, and then formulate reasonable teaching plans. At the same time, they can pay attention to students' inner feelings, which is helpful to students' psychological health. Especially in distance education, due to the separation of time and space, there is no emotional incentive between teachers and students for two-way communication. Without the atmosphere brought by traditional classroom learning, students are easily bored, and affect the learning effect. Applying affective computing in distance education system can effectively improve this situation.


=== Transportation ===
The applications of sensory computing may contribute to improving road safety. For example, a car can monitor the emotion of all occupants and engage in additional safety measures, such as alerting other vehicles if it detects the driver to be angry. In addition, affective computing systems for monitoring the driver's stress may allow various interventions such as driver assistance systems adjusted according to the stress level and minimal and direct interventions to change the emotional state of the driver.


=== Healthcare ===
Social robots, as well as a growing number of robots used in health care benefit from emotional awareness because they can better judge users' and patient's emotional states and alter their actions/programming appropriately. This is especially important in those countries with growing aging populations and/or a lack of younger workers to address their needs.
Affective computing is also being applied to the development of communicative technologies for use by people with autism. The affective component of a text is also increasingly gaining attention, particularly its role in the so-called emotional or emotive Internet.


=== Video games ===
Affective video games can access their players' emotional states through biofeedback devices. A particularly simple form of biofeedback is available through gamepads that measure the pressure with which a button is pressed: this has been shown to correlate strongly with the players' level of arousal; at the other end of the scale are brain–computer interfaces. Affective games have been used in medical research to support the emotional development of autistic children.


=== Psychomotor training ===
Training methods of psychomotor operations such as steering and maneuvering are used in various fields such as aviation, transportation and medicine. Integrating affective computing capabilities in this type of training systems, in accordance with the adaptive automation approach, has been found to be effective in improving the quality of training and shortening the required training duration.


=== Other applications ===
Affective computing has potential applications in human–computer interaction, such as affective mirrors allowing the user to see how he or she performs; emotion monitoring agents sending a warning before one sends an angry email; or even music players selecting tracks based on mood.
One idea put forth by the Romanian researcher Dr. Nicu Sebe in an interview is the analysis of a person's face while they are using a certain product (he mentioned ice cream as an example). Companies would then be able to use such analysis to infer whether their product will or will not be well received by the respective market.
One could also use affective state recognition in order to judge the impact of a TV advertisement through a real-time video recording of that person and through the subsequent study of his or her facial expression. Averaging the results obtained on a large group of subjects, one can tell whether that commercial (or movie) has the desired effect and what the elements which interest the watcher most are.


== Cognitivist vs. interactional approaches ==
Within the field of human–computer interaction, Rosalind Picard's cognitivist or "information model" concept of emotion has been criticized by and contrasted with the "post-cognitivist" or "interactional" pragmatist approach taken by Kirsten Boehner and others which views emotion as inherently social.
Picard's focus is human–computer interaction, and her goal for affective computing is to "give computers the ability to recognize, express, and in some cases, 'have' emotions". In contrast, the interactional approach seeks to help "people to understand and experience their own emotions" and to improve computer-mediated interpersonal communication.  It does not necessarily seek to map emotion into an objective mathematical model for machine interpretation, but rather let humans make sense of each other's emotional expressions in open-ended ways that might be ambiguous, subjective, and sensitive to context.: 284 
Picard's critics describe her concept of emotion as "objective, internal, private, and mechanistic". They say it reduces emotion to a discrete psychological signal occurring inside the body that can be measured and which is an input to cognition, undercutting the complexity of emotional experience.: 280 : 278 
The interactional approach asserts that though emotion has biophysical aspects, it is "culturally grounded, dynamically experienced, and to some degree constructed in action and interaction".: 276  Put another way, it considers "emotion as a social and cultural product experienced through our interactions".


== See also ==


== References ==


=== Citations ===


=== Works cited ===
Hudlicka, Eva (2003). "To feel or not to feel: The role of affect in human–computer interaction". International Journal of Human–Computer Studies. 59 (1–2): 1–32. CiteSeerX 10.1.1.180.6429. doi:10.1016/s1071-5819(03)00047-8.
Scherer, Klaus R; Bänziger, Tanja; Roesch, Etienne B (2010). A Blueprint for Affective Computing: A Sourcebook and Manual. Oxford: Oxford University Press. ISBN 978-0-19-956670-9.