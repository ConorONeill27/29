# Abductive reasoning

Abductive reasoning (also called abduction, abductive inference, or retroduction) is a form of logical inference that seeks the simplest and most likely conclusion from a set of observations. It was formulated and advanced by American philosopher and logician Charles Sanders Peirce beginning in the latter half of the 19th century.
Abductive reasoning, unlike deductive reasoning, yields a plausible conclusion but does not definitively verify it. Abductive conclusions do not eliminate uncertainty or doubt, which is expressed in retreat terms such as "best available" or "most likely". While inductive reasoning draws general conclusions that apply to many situations, abductive conclusions are confined to the particular observations in question.
In the 1990s, as computing power grew, the fields of law, computer science, and artificial intelligence research spurred renewed interest in the subject of abduction.
Diagnostic expert systems frequently employ abduction.


== Deduction, induction, and abduction ==


=== Deduction ===

Deductive reasoning allows deriving 
  
    
      
        b
      
    
    {\displaystyle b}
  
 from 
  
    
      
        a
      
    
    {\displaystyle a}
  
 only where 
  
    
      
        b
      
    
    {\displaystyle b}
  
 is a formal logical consequence of 
  
    
      
        a
      
    
    {\displaystyle a}
  
. In other words, deduction derives the consequences of the assumed. Given the truth of the assumptions, a valid deduction guarantees the truth of the conclusion. For example, given that "Wikis can be edited by anyone" (
  
    
      
        
          a
          
            1
          
        
      
    
    {\displaystyle a_{1}}
  
) and "Wikipedia is a wiki" (
  
    
      
        
          a
          
            2
          
        
      
    
    {\displaystyle a_{2}}
  
), it follows that "Wikipedia can be edited by anyone" (
  
    
      
        b
      
    
    {\displaystyle b}
  
).


=== Induction ===

Inductive reasoning is the process of inferring some general principle 
  
    
      
        b
      
    
    {\displaystyle b}
  
 from a body of knowledge 
  
    
      
        a
      
    
    {\displaystyle a}
  
, where 
  
    
      
        b
      
    
    {\displaystyle b}
  
 does not necessarily follow from 
  
    
      
        a
      
    
    {\displaystyle a}
  
. 
  
    
      
        a
      
    
    {\displaystyle a}
  
 might give us very good reason to accept 
  
    
      
        b
      
    
    {\displaystyle b}
  
 but does not ensure 
  
    
      
        b
      
    
    {\displaystyle b}
  
. For example, if it is given that 95% percent of the elephants are gray, and Louise is an elephant, one can induce that Louise is gray. Still, this is not necessarily the case: 5 percent of the time this conclusion will be wrong.
However, an inference being derived from statistical data is not sufficient to classify it as inductive. For example, if all swans that a person has observed so far are white, they may instead abduce the possibility that all swans are white. They have good reason to believe the conclusion from the premise because it is the best explanation for their observations, and the truth of the conclusion is still not guaranteed. (Indeed, it turns out that some swans are black.)


=== Abduction ===
Abductive reasoning allows inferring 
  
    
      
        a
      
    
    {\displaystyle a}
  
 as an explanation of 
  
    
      
        b
      
    
    {\displaystyle b}
  
. As a result of this inference, abduction allows the precondition 
  
    
      
        a
      
    
    {\displaystyle a}
  
 to be abducted from the consequence 
  
    
      
        b
      
    
    {\displaystyle b}
  
. Deductive reasoning and abductive reasoning thus differ in which end, left or right, of the proposition "
  
    
      
        a
      
    
    {\displaystyle a}
  
 entails 
  
    
      
        b
      
    
    {\displaystyle b}
  
" serves as conclusion. For example, in a billiard game, after glancing and seeing the eight ball moving towards us, we may abduce that the cue ball struck the eight ball. The strike of the cue ball would account for the movement of the eight ball. It serves as a hypothesis that best explains our observation. Given the many possible explanations for the movement of the eight ball, our abduction does not leave us certain that the cue ball in fact struck the eight ball, but our abduction, still useful, can serve to orient us in our surroundings. Despite many possible explanations for any physical process that we observe, we tend to abduce a single explanation (or a few explanations) for this process in the expectation that we can better orient ourselves in our surroundings and disregard some possibilities. Properly used, abductive reasoning can be a useful source of priors in Bayesian statistics.
One can understand abductive reasoning as inference to the best explanation, although not all usages of the terms abduction and inference to the best explanation are equivalent.


== Formalizations of abduction ==


=== Logic-based abduction ===
In logic, explanation is accomplished through the use of a logical theory 
  
    
      
        T
      
    
    {\displaystyle T}
  
 representing a domain and a set of observations 
  
    
      
        O
      
    
    {\displaystyle O}
  
. Abduction is the process of deriving a set of explanations of 
  
    
      
        O
      
    
    {\displaystyle O}
  
 according to 
  
    
      
        T
      
    
    {\displaystyle T}
  
 and picking out one of those explanations. For 
  
    
      
        E
      
    
    {\displaystyle E}
  
 to be an explanation of 
  
    
      
        O
      
    
    {\displaystyle O}
  
 according to 
  
    
      
        T
      
    
    {\displaystyle T}
  
, it should satisfy two conditions:

  
    
      
        O
      
    
    {\displaystyle O}
  
 follows from 
  
    
      
        E
      
    
    {\displaystyle E}
  
 and 
  
    
      
        T
      
    
    {\displaystyle T}
  
;

  
    
      
        E
      
    
    {\displaystyle E}
  
 is consistent with 
  
    
      
        T
      
    
    {\displaystyle T}
  
.
In formal logic, 
  
    
      
        O
      
    
    {\displaystyle O}
  
 and 
  
    
      
        E
      
    
    {\displaystyle E}
  
 are assumed to be sets of literals. The two conditions for 
  
    
      
        E
      
    
    {\displaystyle E}
  
 being an explanation of 
  
    
      
        O
      
    
    {\displaystyle O}
  
 according to theory 
  
    
      
        T
      
    
    {\displaystyle T}
  
 are formalized as:

  
    
      
        T
        ∪
        E
        ⊨
        O
        ;
      
    
    {\displaystyle T\cup E\models O;}
  

  
    
      
        T
        ∪
        E
      
    
    {\displaystyle T\cup E}
  
 is consistent.
Among the possible explanations 
  
    
      
        E
      
    
    {\displaystyle E}
  
 satisfying these two conditions, some other condition of minimality is usually imposed to avoid irrelevant facts (not contributing to the entailment of 
  
    
      
        O
      
    
    {\displaystyle O}
  
) being included in the explanations. Abduction is then the process that picks out some member of 
  
    
      
        E
      
    
    {\displaystyle E}
  
. Criteria for picking out a member representing "the best" explanation include the simplicity, the prior probability, or the explanatory power of the explanation.
A proof-theoretical abduction method for first-order classical logic based on the sequent calculus and a dual one, based on semantic tableaux (analytic tableaux) have been proposed. The methods are sound and complete and work for full first-order logic, without requiring any preliminary reduction of formulae into normal forms. These methods have also been extended to modal logic.
Abductive logic programming is a computational framework that extends normal logic programming with abduction. It separates the theory 
  
    
      
        T
      
    
    {\displaystyle T}
  
 into two components, one of which is a normal logic program, used to generate 
  
    
      
        E
      
    
    {\displaystyle E}
  
 by means of backward reasoning, the other of which is a set of integrity constraints, used to filter the set of candidate explanations.


=== Set-cover abduction ===
A different formalization of abduction is based on inverting the function that calculates the visible effects of the hypotheses. Formally, we are given a set of hypotheses 
  
    
      
        H
      
    
    {\displaystyle H}
  
 and a set of manifestations 
  
    
      
        M
      
    
    {\displaystyle M}
  
; they are related by the domain knowledge, represented by a function 
  
    
      
        e
      
    
    {\displaystyle e}
  
 that takes as an argument a set of hypotheses and gives as a result the corresponding set of manifestations. In other words, for every subset of the hypotheses 
  
    
      
        
          H
          ′
        
        ⊆
        H
      
    
    {\displaystyle H'\subseteq H}
  
, their effects are known to be 
  
    
      
        e
        (
        
          H
          ′
        
        )
      
    
    {\displaystyle e(H')}
  
.
Abduction is performed by finding a set 
  
    
      
        
          H
          ′
        
        ⊆
        H
      
    
    {\displaystyle H'\subseteq H}
  
 such that 
  
    
      
        M
        ⊆
        e
        (
        
          H
          ′
        
        )
      
    
    {\displaystyle M\subseteq e(H')}
  
. In other words, abduction is performed by finding a set of hypotheses 
  
    
      
        
          H
          ′
        
      
    
    {\displaystyle H'}
  
 such that their effects 
  
    
      
        e
        (
        
          H
          ′
        
        )
      
    
    {\displaystyle e(H')}
  
 include all observations 
  
    
      
        M
      
    
    {\displaystyle M}
  
.
A common assumption is that the effects of the hypotheses are independent, that is, for every 
  
    
      
        
          H
          ′
        
        ⊆
        H
      
    
    {\displaystyle H'\subseteq H}
  
, it holds that 
  
    
      
        e
        (
        
          H
          ′
        
        )
        =
        
          ⋃
          
            h
            ∈
            
              H
              ′
            
          
        
        e
        (
        {
        h
        }
        )
      
    
    {\displaystyle e(H')=\bigcup _{h\in H'}e(\{h\})}
  
. If this condition is met, abduction can be seen as a form of set covering.


=== Abductive validation ===
Abductive validation is the process of validating a given hypothesis through abductive reasoning. This can also be called reasoning through successive approximation. Under this principle, an explanation is valid if it is the best possible explanation of a set of known data. The best possible explanation is often defined in terms of simplicity and elegance (see Occam's razor). Abductive validation is common practice in hypothesis formation in science; moreover, Peirce claims that it is a ubiquitous aspect of thought:

Looking out my window this lovely spring morning, I see an azalea in full bloom. No, no! I don't see that; though that is the only way I can describe what I see. That is a proposition, a sentence, a fact; but what I perceive is not proposition, sentence, fact, but only an image, which I make intelligible in part by means of a statement of fact. This statement is abstract; but what I see is concrete. I perform an abduction when I so much as express in a sentence anything I see. The truth is that the whole fabric of our knowledge is one matted felt of pure hypothesis confirmed and refined by induction. Not the smallest advance can be made in knowledge beyond the stage of vacant staring, without making an abduction at every step.

It was Peirce's own maxim that "Facts cannot be explained by a hypothesis more extraordinary than these facts themselves; and of various hypotheses the least extraordinary must be adopted." After obtaining possible hypotheses that may explain the facts, abductive validation is a method for identifying the most likely hypothesis that should be adopted.


=== Subjective logic abduction ===
Subjective logic generalises probabilistic logic by including degrees of epistemic uncertainty in the input arguments, i.e. instead of probabilities, the analyst can express arguments as subjective opinions. Abduction in subjective logic is thus a generalization of probabilistic abduction described above. The input arguments in subjective logic are subjective opinions which can be binomial when the opinion applies to a binary variable or multinomial when it applies to an n-ary variable. A subjective opinion thus applies to a state variable 
  
    
      
        X
      
    
    {\displaystyle X}
  
 which takes its values from a domain 
  
    
      
        
          X
        
      
    
    {\displaystyle \mathbf {X} }
  
 (i.e. a state space of exhaustive and mutually disjoint state values 
  
    
      
        x
      
    
    {\displaystyle x}
  
), and is denoted by the tuple 
  
    
      
        
          ω
          
            X
          
        
        =
        (
        
          b
          
            X
          
        
        ,
        
          u
          
            X
          
        
        ,
        
          a
          
            X
          
        
        )
        
        
      
    
    {\displaystyle \omega _{X}=(b_{X},u_{X},a_{X})\,\!}
  
, where 
  
    
      
        
          b
          
            X
          
        
        
        
      
    
    {\displaystyle b_{X}\,\!}
  
 is the belief mass distribution over 
  
    
      
        
          X
        
      
    
    {\displaystyle \mathbf {X} }
  
, 
  
    
      
        
          u
          
            X
          
        
        
        
      
    
    {\displaystyle u_{X}\,\!}
  
 is the epistemic uncertainty mass, and 
  
    
      
        
          a
          
            X
          
        
        
        
      
    
    {\displaystyle a_{X}\,\!}
  
 is the base rate distribution over 
  
    
      
        
          X
        
      
    
    {\displaystyle \mathbf {X} }
  
. These parameters satisfy 
  
    
      
        
          u
          
            X
          
        
        +
        ∑
        
          b
          
            X
          
        
        (
        x
        )
        =
        1
        
        
      
    
    {\displaystyle u_{X}+\sum b_{X}(x)=1\,\!}
  
 and 
  
    
      
        ∑
        
          a
          
            X
          
        
        (
        x
        )
        =
        1
        
        
      
    
    {\displaystyle \sum a_{X}(x)=1\,\!}
  
 as well as 
  
    
      
        
          b
          
            X
          
        
        (
        x
        )
        ,
        
          u
          
            X
          
        
        ,
        
          a
          
            X
          
        
        (
        x
        )
        ∈
        [
        0
        ,
        1
        ]
        
        
      
    
    {\displaystyle b_{X}(x),u_{X},a_{X}(x)\in [0,1]\,\!}
  
.
Assume the domains 
  
    
      
        
          X
        
      
    
    {\displaystyle \mathbf {X} }
  
 and 
  
    
      
        
          Y
        
      
    
    {\displaystyle \mathbf {Y} }
  
 with respective variables 
  
    
      
        X
      
    
    {\displaystyle X}
  
 and 
  
    
      
        Y
      
    
    {\displaystyle Y}
  
, the set of conditional opinions 
  
    
      
        
          ω
          
            X
            ∣
            Y
          
        
      
    
    {\displaystyle \omega _{X\mid Y}}
  
 (i.e. one conditional opinion for each value 
  
    
      
        y
      
    
    {\displaystyle y}
  
), and the base rate distribution 
  
    
      
        
          a
          
            Y
          
        
      
    
    {\displaystyle a_{Y}}
  
. Based on these parameters, the subjective Bayes' theorem denoted with the operator 
  
    
      
        
        
          
            
              ϕ
              ~
            
          
        
      
    
    {\displaystyle \;{\widetilde {\phi }}}
  
 produces the set of inverted conditionals 
  
    
      
        
          ω
          
            Y
            
              
                
                  ∣
                  ~
                
              
            
            X
          
        
      
    
    {\displaystyle \omega _{Y{\tilde {\mid }}X}}
  
 (i.e. one inverted conditional for each value 
  
    
      
        x
      
    
    {\displaystyle x}
  
) expressed by:

  
    
      
        
          ω
          
            Y
            
              
                
                  
                    |
                  
                  ~
                
              
            
            X
          
        
        =
        
          ω
          
            X
            
              |
            
            Y
          
        
        
        
          
            
              
                ϕ
                
              
              ~
            
          
        
        
        
          a
          
            Y
          
        
      
    
    {\displaystyle \omega _{Y{\tilde {|}}X}=\omega _{X|Y}\;{\widetilde {\phi \,}}\;a_{Y}}
  
.
Using these inverted conditionals together with the opinion 
  
    
      
        
          ω
          
            X
          
        
      
    
    {\displaystyle \omega _{X}}
  
 subjective deduction denoted by the operator 
  
    
      
        ⊚
      
    
    {\displaystyle \circledcirc }
  
 can be used to abduce the marginal opinion 
  
    
      
        
          ω
          
            Y
            
            
              
                ‖
                ¯
              
            
            
            X
          
        
      
    
    {\displaystyle \omega _{Y\,{\overline {\|}}\,X}}
  
. The equality between the different expressions for subjective abduction is given below:

  
    
      
        
          
            
              
                
                  ω
                  
                    Y
                    
                    
                      
                        
                          ‖
                          ~
                        
                      
                    
                    
                    X
                  
                
              
              
                
                =
                
                  ω
                  
                    X
                    ∣
                    Y
                  
                
                
                
                  
                    
                      ⊚
                      ~
                    
                  
                
                
                
                  ω
                  
                    X
                  
                
              
            
            
              
              
                
                =
                (
                
                  ω
                  
                    X
                    ∣
                    Y
                  
                
                
                
                  
                    
                      
                        ϕ
                        
                      
                      ~
                    
                  
                
                
                
                  a
                  
                    Y
                  
                
                )
                
                ⊚
                
                
                  ω
                  
                    X
                  
                
              
            
            
              
              
                
                =
                
                  ω
                  
                    Y
                    
                      
                        
                          
                            |
                          
                          ~
                        
                      
                    
                    X
                  
                
                
                ⊚
                
                
                  ω
                  
                    X
                  
                
                
                .
              
            
          
        
      
    
    {\displaystyle {\begin{aligned}\omega _{Y\,{\widetilde {\|}}\,X}&=\omega _{X\mid Y}\;{\widetilde {\circledcirc }}\;\omega _{X}\\&=(\omega _{X\mid Y}\;{\widetilde {\phi \,}}\;a_{Y})\;\circledcirc \;\omega _{X}\\&=\omega _{Y{\widetilde {|}}X}\;\circledcirc \;\omega _{X}\;.\end{aligned}}}
  

The symbolic notation for subjective abduction is "
  
    
      
        
          
            
              ‖
              ~
            
          
        
      
    
    {\displaystyle {\widetilde {\|}}}
  
", and the operator itself is denoted as "
  
    
      
        
          
            
              ⊚
              ~
            
          
        
      
    
    {\displaystyle {\widetilde {\circledcirc }}}
  
". The operator for the subjective Bayes' theorem is denoted "
  
    
      
        
          
            
              
                ϕ
                
              
              ~
            
          
        
      
    
    {\displaystyle {\widetilde {\phi \,}}}
  
", and subjective deduction is denoted "
  
    
      
        ⊚
      
    
    {\displaystyle \circledcirc }
  
".
The advantage of using subjective logic abduction compared to probabilistic abduction is that both aleatoric and epistemic uncertainty about the input argument probabilities can be explicitly expressed and taken into account during the analysis. It is thus possible to perform abductive analysis in the presence of uncertain arguments, which naturally results in degrees of uncertainty in the output conclusions.


== History ==
The idea that the simplest, most easily verifiable solution should be preferred over its more complicated counterparts is a very old one. To this point, George Pólya, in his treatise on problem-solving, makes reference to the following Latin truism: simplex sigillum veri (simplicity is the seal of truth).


=== Introduction and development by Peirce ===


==== Overview ====
The American philosopher Charles Sanders Peirce introduced abduction into modern logic. Over the years he called such inference hypothesis, abduction, presumption, and retroduction. He considered it a topic in logic as a normative field in philosophy, not in purely formal or mathematical logic, and eventually as a topic also in economics of research.
As two stages of the development, extension, etc., of a hypothesis in scientific inquiry, abduction and also induction are often collapsed into one overarching concept—the hypothesis. That is why, in the scientific method known from Galileo and Bacon, the abductive stage of hypothesis formation is conceptualized simply as induction. Thus, in the twentieth century this collapse was reinforced by Karl Popper's explication of the hypothetico-deductive model, where the hypothesis is considered to be just "a guess" (in the spirit of Peirce). However, when the formation of a hypothesis is considered the result of a process it becomes clear that this "guess" has already been tried and made more robust in thought as a necessary stage of its acquiring the status of hypothesis. Indeed, many abductions are rejected or heavily modified by subsequent abductions before they ever reach this stage.
Before 1900, Peirce treated abduction as the use of a known rule to explain an observation. For instance: it is a known rule that, if it rains, grass gets wet; so, to explain the fact that the grass on this lawn is wet, one abduces that it has rained. Abduction can lead to false conclusions if other rules that might explain the observation are not taken into account—e.g. the grass could be wet from dew. This remains the common use of the term "abduction" in the social sciences and in artificial intelligence.
Peirce consistently characterized it as the kind of inference that originates a hypothesis by concluding in an explanation, though an unassured one, for some very curious or surprising (anomalous) observation stated in a premise. As early as 1865 he wrote that all conceptions of cause and force are reached through hypothetical inference; in the 1900s he wrote that all explanatory content of theories is reached through abduction. In other respects Peirce revised his view of abduction over the years.
In later years his view came to be:

Abduction is guessing. It is "very little hampered" by rules of logic. Even a well-prepared mind's individual guesses are more frequently wrong than right. But the success of our guesses far exceeds that of random luck and seems born of attunement to nature by instinct (some speak of intuition in such contexts).
Abduction guesses a new or outside idea so as to account in a plausible, instinctive, economical way for a surprising or very complicated phenomenon. That is its proximate aim.
Its longer aim is to economize inquiry itself. Its rationale is inductive: it works often enough, is the only source of new ideas, and has no substitute in expediting the discovery of new truths. Its rationale especially involves its role in coordination with other modes of inference in inquiry. It is inference to explanatory hypotheses for selection of those best worth trying.
Pragmatism is the logic of abduction. Upon the generation of an explanation (which he came to regard as instinctively guided), the pragmatic maxim gives the necessary and sufficient logical rule to abduction in general. The hypothesis, being insecure, needs to have conceivable implications for informed practice, so as to be testable and, through its trials, to expedite and economize inquiry. The economy of research is what calls for abduction and governs its art.
Writing in 1910, Peirce admits that "in almost everything I printed before the beginning of this century I more or less mixed up hypothesis and induction" and he traces the confusion of these two types of reasoning to logicians' too "narrow and formalistic a conception of inference, as necessarily having formulated judgments from its premises."
He started out in the 1860s treating hypothetical inference in a number of ways which he eventually peeled away as inessential or, in some cases, mistaken:

as inferring the occurrence of a character (a characteristic) from the observed combined occurrence of multiple characters which its occurrence would necessarily involve; for example, if any occurrence of A is known to necessitate occurrence of B, C, D, E, then the observation of B, C, D, E suggests by way of explanation the occurrence of A. (But by 1878 he no longer regarded such multiplicity as common to all hypothetical inference.Wikisource)
as aiming for a more or less probable hypothesis (in 1867 and 1883 but not in 1878; anyway by 1900 the justification is not probability but the lack of alternatives to guessing and the fact that guessing is fruitful; by 1903 he speaks of the "likely" in the sense of nearing the truth in an "indefinite sense"; by 1908 he discusses plausibility as instinctive appeal.) In a paper dated by editors as circa 1901, he discusses "instinct" and "naturalness", along with the kind of considerations (low cost of testing, logical caution, breadth, and incomplexity) that he later calls methodeutical.
as induction from characters (but as early as 1900 he characterized abduction as guessing)
as citing a known rule in a premise rather than hypothesizing a rule in the conclusion (but by 1903 he allowed either approach)
as basically a transformation of a deductive categorical syllogism (but in 1903 he offered a variation on modus ponens instead, and by 1911 he was unconvinced that any one form covers all hypothetical inference).


==== The Natural Classification of Arguments (1867) ====
In 1867, Peirce's "On the Natural Classification of Arguments", hypothetical inference always deals with a cluster of characters (call them P′, P′′, P′′′, etc.) known to occur at least whenever a certain character (M) occurs. Note that categorical syllogisms have elements traditionally called middles, predicates, and subjects. For example: All men [middle] are mortal [predicate]; Socrates [subject] is a man [middle]; ergo Socrates [subject] is mortal [predicate]". Below, 'M' stands for a middle; 'P' for a predicate; 'S' for a subject. Peirce held that all deduction can be put into the form of the categorical syllogism Barbara (AAA-1).


==== Deduction, Induction, and Hypothesis (1878) ====
In 1878, in "Deduction, Induction, and Hypothesis", there is no longer a need for multiple characters or predicates in order for an inference to be hypothetical, although it is still helpful. Moreover, Peirce no longer poses hypothetical inference as concluding in a probable hypothesis. In the forms themselves, it is understood but not explicit that induction involves random selection and that hypothetical inference involves response to a "very curious circumstance". The forms instead emphasize the modes of inference as rearrangements of one another's propositions (without the bracketed hints shown below).


==== A Theory of Probable Inference (1883) ====
Peirce long treated abduction in terms of induction from characters or traits (weighed, not counted like objects), explicitly so in his influential 1883 "A theory of probable inference", in which he returns to involving probability in the hypothetical conclusion. Like "Deduction, Induction, and Hypothesis" in 1878, it was widely read (see the historical books on statistics by Stephen Stigler), unlike his later amendments of his conception of abduction. Today abduction remains most commonly understood as induction from characters and extension of a known rule to cover unexplained circumstances.
Sherlock Holmes used this method of reasoning in the stories of Arthur Conan Doyle, although Holmes refers to it as "deductive reasoning".


==== Minute Logic (1902) and after ====
In 1902 Peirce wrote that he now regarded the syllogistical forms and the doctrine of extension and comprehension (i.e., objects and characters as referenced by terms), as being less fundamental than he had earlier thought. In 1903 he offered the following form for abduction: 

The surprising fact, C, is observed; 
But if A were true, C would be a matter of course,
Hence, there is reason to suspect that A is true.
The hypothesis is framed, but not asserted, in a premise, then asserted as rationally suspectable in the conclusion. Thus, as in the earlier categorical syllogistic form, the conclusion is formulated from some premise(s). But all the same the hypothesis consists more clearly than ever in a new or outside idea beyond what is known or observed. Induction in a sense goes beyond observations already reported in the premises, but it merely amplifies ideas already known to represent occurrences, or tests an idea supplied by hypothesis; either way it requires previous abductions in order to get such ideas in the first place. Induction seeks facts to test a hypothesis; abduction seeks a hypothesis to account for facts.
Note that the hypothesis ("A") could be of a rule. It need not even be a rule strictly necessitating the surprising observation ("C"), which needs to follow only as a "matter of course"; or the "course" itself could amount to some known rule, merely alluded to, and also not necessarily a rule of strict necessity. In the same year, Peirce wrote that reaching a hypothesis may involve placing a surprising observation under either a newly hypothesized rule or a hypothesized combination of a known rule with a peculiar state of facts, so that the phenomenon would be not surprising but instead either necessarily implied or at least likely.
Peirce did not remain quite convinced about any such form as the categorical syllogistic form or the 1903 form. In 1911, he wrote, "I do not, at present, feel quite convinced that any logical form can be assigned that will cover all 'Retroductions'. For what I mean by a Retroduction is simply a conjecture which arises in the mind."


==== Pragmatism ====
In 1901 Peirce wrote, "There would be no logic in imposing rules, and saying that they ought to be followed, until it is made out that the purpose of hypothesis requires them." In 1903 Peirce called pragmatism "the logic of abduction" and said that the pragmatic maxim gives the necessary and sufficient logical rule to abduction in general. The pragmatic maxim is:

Consider what effects, that might conceivably have practical bearings, we conceive the object of our conception to have. Then, our conception of these effects is the whole of our conception of the object.
It is a method for fruitful clarification of conceptions by equating the meaning of a conception with the conceivable practical implications of its object's conceived effects. Peirce held that that is precisely tailored to abduction's purpose in inquiry, the forming of an idea that could conceivably shape informed conduct. In various writings in the 1900s he said that the conduct of abduction (or retroduction) is governed by considerations of economy, belonging in particular to the economics of research. He regarded economics as a normative science whose analytic portion might be part of logical methodeutic (that is, theory of inquiry).


==== Three levels of logic about abduction ====
Peirce came over the years to divide (philosophical) logic into three departments: 

Stechiology, or speculative grammar, on the conditions for meaningfulness. Classification of signs (semblances, symptoms, symbols, etc.) and their combinations (as well as their objects and interpretants).
Logical critic, or logic proper, on validity or justifiability of inference, the conditions for true representation. Critique of arguments in their various modes (deduction, induction, abduction).
Methodeutic, or speculative rhetoric, on the conditions for determination of interpretations. Methodology of inquiry in its interplay of modes.
Peirce had, from the start, seen the modes of inference as being coordinated together in scientific inquiry and, by the 1900s, held that hypothetical inference in particular is inadequately treated at the level of critique of arguments. To increase the assurance of a hypothetical conclusion, one needs to deduce implications about evidence to be found, predictions which induction can test through observation so as to evaluate the hypothesis. That is Peirce's outline of the scientific method of inquiry, as covered in his inquiry methodology, which includes pragmatism or, as he later called it, pragmaticism, the clarification of ideas in terms of their conceivable implications regarding informed practice.


===== Classification of signs =====
As early as 1866, Peirce held that:
1. Hypothesis (abductive inference) is inference through an icon (also called a likeness). 
2. Induction is inference through an index (a sign by factual connection); a sample is an index of the totality from which it is drawn. 
3. Deduction is inference through a symbol (a sign by interpretive habit irrespective of resemblance or connection to its object).
In 1902, Peirce wrote that, in abduction: "It is recognized that the phenomena are like, i.e. constitute an Icon of, a replica of a general conception, or Symbol."


===== Critique of arguments =====
At the critical level Peirce examined the forms of abductive arguments (as discussed above), and came to hold that the hypothesis should economize explanation for plausibility in terms of the feasible and natural. In 1908 Peirce described this plausibility in some detail. It involves not likeliness based on observations (which is instead the inductive evaluation of a hypothesis), but instead optimal simplicity in the sense of the "facile and natural", as by Galileo's natural light of reason and as distinct from "logical simplicity" (Peirce does not dismiss logical simplicity entirely but sees it in a subordinate role; taken to its logical extreme it would favor adding no explanation to the observation at all). Even a well-prepared mind guesses oftener wrong than right, but our guesses succeed better than random luck at reaching the truth or at least advancing the inquiry, and that indicates to Peirce that they are based in instinctive attunement to nature, an affinity between the mind's processes and the processes of the real, which would account for why appealingly "natural" guesses are the ones that oftenest (or least seldom) succeed; to which Peirce added the argument that such guesses are to be preferred since, without "a natural bent like nature's", people would have no hope of understanding nature. In 1910 Peirce made a three-way distinction between probability, verisimilitude, and plausibility, and defined plausibility with a normative "ought": "By plausibility, I mean the degree to which a theory ought to recommend itself to our belief independently of any kind of evidence other than our instinct urging us to regard it favorably." For Peirce, plausibility does not depend on observed frequencies or probabilities, or on verisimilitude, or even on testability, which is not a question of the critique of the hypothetical inference as an inference, but rather a question of the hypothesis's relation to the inquiry process.
The phrase "inference to the best explanation" (not used by Peirce but often applied to hypothetical inference) is not always understood as referring to the most simple and natural hypotheses (such as those with the fewest assumptions). However, in other senses of "best", such as "standing up best to tests", it is hard to know which is the best explanation to form, since one has not tested it yet. Still, for Peirce, any justification of an abductive inference as "good" is not completed upon its formation as an argument (unlike with induction and deduction) and instead depends also on its methodological role and promise (such as its testability) in advancing inquiry.


===== Methodology of inquiry =====
At the methodeutical level Peirce held that a hypothesis is judged and selected for testing because it offers, via its trial, to expedite and economize the inquiry process itself toward new truths, first of all by being testable and also by further economies, in terms of cost, value, and relationships among guesses (hypotheses). Here, considerations such as probability, absent from the treatment of abduction at the critical level, come into play. For examples:

Cost: A simple but low-odds guess, if low in cost to test for falsity, may belong first in line for testing, to get it out of the way. If surprisingly it stands up to tests, that is worth knowing early in the inquiry, which otherwise might have stayed long on a wrong though seemingly likelier track.
Value: A guess is intrinsically worth testing if it has instinctual plausibility or reasoned objective probability, while subjective likelihood, though reasoned, can be treacherous.
Interrelationships: Guesses can be chosen for trial strategically for their
caution, for which Peirce gave as an example the game of Twenty Questions,
breadth of applicability to explain various phenomena, and
incomplexity, that of a hypothesis that seems too simple but whose trial "may give a good 'leave', as the billiard-players say", and be instructive for the pursuit of various and conflicting hypotheses that are less simple.


==== Uberty ====
Peirce indicated that abductive reasoning is driven by the need for "economy in research"—the expected fact-based productivity of hypotheses, prior to deductive and inductive processes of verification. A key concept proposed by him in this regard is "uberty"—the expected fertility and pragmatic value of reasoning. This concept seems to be gaining support via association to the Free Energy Principle.


=== Gilbert Harman (1965) ===
Gilbert Harman was a professor of philosophy at Princeton University. Harman's 1965 account of the role of "inference to the best explanation" – inferring the existence of that which we need for the best explanation of observable phenomena – has been very influential.


=== Stephen Jay Gould (1995) ===
Stephen Jay Gould, in answering the Omphalos hypothesis, claimed that only hypotheses that can be proved incorrect lie within the domain of science and only these hypotheses are good explanations of facts worth inferring to. "[W]hat is so desperately wrong with Omphalos? Only this really (and perhaps paradoxically): that we can devise no way to find out whether it is wrong—or for that matter, right. Omphalos is the classic example of an utterly untestable notion, for the world will look exactly the same in all its intricate detail whether fossils and strata are prochronic [signs of a fictitious past] or products of an
extended history. . . . Science is a procedure for testing and rejecting hypotheses, not a compendium of certain knowledge. Claims that can be proved incorrect lie within its domain. . . . But theories that cannot be tested in principle are not part of science. . . . [W]e reject Omphalos as useless, not wrong."


== Applications ==


=== Artificial intelligence ===
Applications in artificial intelligence include fault diagnosis, belief revision, and automated planning. The most direct application of abduction is that of automatically detecting faults in systems: given a theory relating faults with their effects and a set of observed effects, abduction can be used to derive sets of faults that are likely to be the cause of the problem.


=== Medicine ===
In medicine, abduction can be seen as a component of clinical evaluation and judgment. The Internist-I diagnostic system, the first AI system that covered the field of Internal Medicine, used abductive reasoning to converge on the most likely causes of a set of patient symptoms that it acquired through an interactive dialog with an expert user.


=== Automated planning ===
Abduction can also be used to model automated planning. Given a logical theory relating action occurrences with their effects (for example, a formula of the event calculus), the problem of finding a plan for reaching a state can be modeled as the problem of abducting a set of literals implying that the final state is the goal state.


=== Intelligence analysis ===
In intelligence analysis, analysis of competing hypotheses and Bayesian networks, probabilistic abductive reasoning is used extensively. Similarly in medical diagnosis and legal reasoning, the same methods are being used, although there have been many examples of errors, especially caused by the base rate fallacy and the prosecutor's fallacy.


=== Belief revision ===

Belief revision, the process of adapting beliefs in view of new information, is another field in which abduction has been applied. The main problem of belief revision is that the new information may be inconsistent with the prior web of beliefs, while the result of the incorporation cannot be inconsistent. The process of updating the web of beliefs can be done by the use of abduction: once an explanation for the observation has been found, integrating it does not generate inconsistency.
Gärdenfors’ paper contains a brief survey of the area of belief revision and its relation to updating of logical databases, and explores the relationship between belief revision and nonmonotonic logic.
This use of abduction is not straightforward, as adding propositional formulae to other propositional formulae can only make inconsistencies worse. Instead, abduction is done at the level of the ordering of preference of the possible worlds. Preference models use fuzzy logic or utility models.


=== Philosophy of science ===
In the philosophy of science, abduction has been the key inference method to support scientific realism, and much of the debate about scientific realism is focused on whether abduction is an acceptable method of inference.


=== Historical linguistics ===
In historical linguistics, abduction during language acquisition is often taken to be an essential part of processes of language change such as reanalysis and analogy.


=== Applied linguistics ===
In applied linguistics research, abductive reasoning is starting to be used as an alternative explanation to inductive reasoning, in recognition of anticipated outcomes of qualitative inquiry playing a role in shaping the direction of analysis. It is defined as "The use of an unclear premise based on observations, pursuing theories to try to explain it" (Rose et al., 2020, p. 258)


=== Anthropology ===
In anthropology, Alfred Gell in his influential book Art and Agency defined abduction (after Eco) as "a case of synthetic inference 'where we find some very curious circumstances, which would be explained by the supposition that it was a case of some general rule, and thereupon adopt that supposition'". Gell criticizes existing "anthropological" studies of art for being too preoccupied with aesthetic value and not preoccupied enough with the central anthropological concern of uncovering "social relationships", specifically the social contexts in which artworks are produced, circulated, and received. Abduction is used as the mechanism for getting from art to agency. That is, abduction can explain how works of art inspire a sensus communis: the commonly held views shared by members that characterize a given society.
The question Gell asks in the book is, "how does it initially 'speak' to people?" He answers by saying that "No reasonable person could suppose that art-like relations between people and things do not involve at least some form of semiosis." However, he rejects any intimation that semiosis can be thought of as a language because then he would have to admit to some pre-established existence of the sensus communis that he wants to claim only emerges afterwards out of art. Abduction is the answer to this conundrum because the tentative nature of the abduction concept (Peirce likened it to guessing) means that not only can it operate outside of any pre-existing framework, but moreover, it can actually intimate the existence of a framework. As Gell reasons in his analysis, the physical existence of the artwork prompts the viewer to perform an abduction that imbues the artwork with intentionality. A statue of a goddess, for example, in some senses actually becomes the goddess in the mind of the beholder; and represents not only the form of the deity but also her intentions (which are adduced from the feeling of her very presence). Therefore, through abduction, Gell claims that art can have the kind of agency that plants the seeds that grow into cultural myths. The power of agency is the power to motivate actions and inspire ultimately the shared understanding that characterizes any given society.


=== Computer programming ===
In formal methods, logic is used to specify and prove properties of computer programs. Abduction has been used in mechanized reasoning tools to increase the level of automation of the proof activity.
A technique known as bi-abduction, which mixes abduction and the frame problem, was used to scale reasoning techniques for memory properties to millions of lines of code; logic-based abduction was used to infer pre-conditions for individual functions in a program, relieving the human of the need to do so. It led to a program-proof startup company, which was acquired by Facebook, and the Infer program analysis tool, which led to thousands of bugs being prevented in industrial codebases.
In addition to inference of function preconditions, abduction has been used to automate inference of invariants for program loops, inference of specifications of unknown code, and in synthesis of the programs themselves.


== See also ==


== Notes ==


== References ==


== External links ==

Douven, Igor. "Abduction". In Zalta, Edward N. (ed.). Stanford Encyclopedia of Philosophy.
Abductive reasoning at the Indiana Philosophy Ontology Project
Abductive reasoning at PhilPapers
"Abductive Inference[usurped]" (once there, scroll down), John R. Josephson, Laboratory for Artificial Intelligence Research, Ohio State University. (Former webpage[usurped] via the Wayback Machine.)
"Deduction, Induction, and Abduction", Chapter 3 in article "Charles Sanders Peirce" by Robert W. Burch, 2001 and 2006, in the Stanford Encyclopedia of Philosophy.
"Abduction[usurped]", links to articles and websites on abductive inference, Martin Ryder[usurped].
International Research Group on Abductive Inference[usurped], Uwe Wirth and Alexander Roesler, eds. Uses frames. Click on link at bottom of its home page for English. Wirth moved to U. of Gießen, Germany, and set up Abduktionsforschung[usurped], home page not in English but see Artikel section there. Abduktionsforschung home page via Google translation.
"'You Know My Method': A Juxtaposition of Charles S. Peirce and Sherlock Holmes" (1981), by Thomas Sebeok with Jean Umiker-Sebeok, from The Play of Musement, Thomas Sebeok, Bloomington, Indiana: Indiana University Press, pp. 17–52.
Commens Dictionary of Peirce's Terms, Mats Bergman and Sami Paavola, editors, Helsinki U. Peirce's own definitions, often many per term across the decades. There, see "Hypothesis [as a form of reasoning]", "Abduction", "Retroduction", and "Presumption [as a form of reasoning]".
"Touching Reality", a critique of abductive reasoning in the context of cosmology.