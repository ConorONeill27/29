# Activation function

The activation function of a node in an artificial neural network is a function that calculates the output of the node based on its individual inputs and their weights. Nontrivial problems can be solved using only a few nodes if the activation function is nonlinear.
Modern activation functions include the logistic (sigmoid) function used in the 2012 speech recognition model developed by Hinton et al; the ReLU used in the 2012 AlexNet computer vision model and in the 2015 ResNet model; and the smooth version of the ReLU, the GELU, which was used in the 2018 BERT model. 


== Comparison of activation functions ==
Aside from their empirical performance, activation functions also have different mathematical properties:

Nonlinear
When the activation function is non-linear, then a two-layer neural network can be proven to be a universal function approximator. This is known as the Universal Approximation Theorem. The identity activation function does not satisfy this property. When multiple layers use the identity activation function, the entire network is equivalent to a single-layer model.
Range
When the range of the activation function is finite, gradient-based training methods tend to be more stable, because pattern presentations significantly affect only limited weights. When the range is infinite, training is generally more efficient because pattern presentations significantly affect most of the weights. In the latter case, smaller learning rates are typically necessary.
Continuously differentiable
This property is desirable (ReLU is not continuously differentiable and has some issues with gradient-based optimization, but it is still possible) for enabling gradient-based optimization methods. The binary step activation function is not differentiable at 0, and it differentiates to 0 for all other values, so gradient-based methods can make no progress with it.
These properties do not decisively influence performance, nor are they the only mathematical properties that may be useful. For instance, the strictly positive range of the softplus makes it suitable for predicting variances in variational autoencoders.


== Mathematical details ==
The most common activation functions can be divided into three categories: ridge functions, radial functions and fold functions.
An activation function 
  
    
      
        f
      
    
    {\displaystyle f}
  
 is saturating if 
  
    
      
        
          lim
          
            
              |
            
            v
            
              |
            
            →
            ∞
          
        
        
          |
        
        ∇
        f
        (
        v
        )
        
          |
        
        =
        0
      
    
    {\displaystyle \lim _{|v|\to \infty }|\nabla f(v)|=0}
  
. It is nonsaturating if it is 
  
    
      
        
          lim
          
            
              |
            
            v
            
              |
            
            →
            ∞
          
        
        
          |
        
        ∇
        f
        (
        v
        )
        
          |
        
        ≠
        0
      
    
    {\displaystyle \lim _{|v|\to \infty }|\nabla f(v)|\neq 0}
  
. Non-saturating activation functions, such as ReLU, may be better than saturating activation functions, because they are less likely to suffer from the vanishing gradient problem.


=== Ridge activation functions ===

Ridge functions are multivariate functions acting on a linear combination of the input variables. Often used examples include:

Linear activation: 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        a
        +
        
          
            v
          
          ′
        
        
          b
        
      
    
    {\displaystyle \phi (\mathbf {v} )=a+\mathbf {v} '\mathbf {b} }
  
,
ReLU activation: 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        max
        (
        0
        ,
        a
        +
        
          
            v
          
          ′
        
        
          b
        
        )
      
    
    {\displaystyle \phi (\mathbf {v} )=\max(0,a+\mathbf {v} '\mathbf {b} )}
  
,
Heaviside activation: 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        
          1
          
            a
            +
            
              
                v
              
              ′
            
            
              b
            
            >
            0
          
        
      
    
    {\displaystyle \phi (\mathbf {v} )=1_{a+\mathbf {v} '\mathbf {b} >0}}
  
,
Logistic activation: 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        (
        1
        +
        exp
        ⁡
        (
        −
        a
        −
        
          
            v
          
          ′
        
        
          b
        
        )
        
          )
          
            −
            1
          
        
      
    
    {\displaystyle \phi (\mathbf {v} )=(1+\exp(-a-\mathbf {v} '\mathbf {b} ))^{-1}}
  
.
In biologically inspired neural networks, the activation function is usually an abstraction representing the rate of action potential firing in the cell. In its simplest form, this function is binary—that is, either the neuron is firing or not. Neurons also cannot fire faster than a certain rate, motivating sigmoid activation functions whose range is a finite interval. 
The function looks like 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        U
        (
        a
        +
        
          
            v
          
          ′
        
        
          b
        
        )
      
    
    {\displaystyle \phi (\mathbf {v} )=U(a+\mathbf {v} '\mathbf {b} )}
  
, where 
  
    
      
        U
      
    
    {\displaystyle U}
  
 is the Heaviside step function. 
If a line has a positive slope, on the other hand, it may reflect the increase in firing rate that occurs as input current increases. Such a function would be of the form 
  
    
      
        ϕ
        (
        
          v
        
        )
        =
        a
        +
        
          
            v
          
          ′
        
        
          b
        
      
    
    {\displaystyle \phi (\mathbf {v} )=a+\mathbf {v} '\mathbf {b} }
  
.


=== Radial activation functions ===

A special class of activation functions known as radial basis functions (RBFs) are used in RBF networks. These activation functions can take many forms, but they are usually found as one of the following functions:

Gaussian: 
  
    
      
        
        ϕ
        (
        
          v
        
        )
        =
        exp
        ⁡
        
          (
          
            −
            
              
                
                  ‖
                  
                    v
                  
                  −
                  
                    c
                  
                  
                    ‖
                    
                      2
                    
                  
                
                
                  2
                  
                    σ
                    
                      2
                    
                  
                
              
            
          
          )
        
      
    
    {\displaystyle \,\phi (\mathbf {v} )=\exp \left(-{\frac {\|\mathbf {v} -\mathbf {c} \|^{2}}{2\sigma ^{2}}}\right)}
  

Multiquadratics: 
  
    
      
        
        ϕ
        (
        
          v
        
        )
        =
        
          
            ‖
            
              v
            
            −
            
              c
            
            
              ‖
              
                2
              
            
            +
            
              a
              
                2
              
            
          
        
      
    
    {\displaystyle \,\phi (\mathbf {v} )={\sqrt {\|\mathbf {v} -\mathbf {c} \|^{2}+a^{2}}}}
  

Inverse multiquadratics: 
  
    
      
        
        ϕ
        (
        
          v
        
        )
        =
        
          
            (
            
              ‖
              
                v
              
              −
              
                c
              
              
                ‖
                
                  2
                
              
              +
              
                a
                
                  2
                
              
            
            )
          
          
            −
            
              
                1
                2
              
            
          
        
      
    
    {\displaystyle \,\phi (\mathbf {v} )=\left(\|\mathbf {v} -\mathbf {c} \|^{2}+a^{2}\right)^{-{\frac {1}{2}}}}
  

Polyharmonic splines
where 
  
    
      
        
          c
        
      
    
    {\displaystyle \mathbf {c} }
  
 is the vector representing the function center and 
  
    
      
        a
      
    
    {\displaystyle a}
  
 and 
  
    
      
        σ
      
    
    {\displaystyle \sigma }
  
 are parameters affecting the spread of the radius.


=== Other examples ===
Periodic functions can serve as activation functions. Usually the sinusoid is used, as any periodic function is decomposable into sinusoids by the Fourier transform.
Quadratic activation maps 
  
    
      
        x
        ↦
        
          x
          
            2
          
        
      
    
    {\displaystyle x\mapsto x^{2}}
  
.


=== Folding activation functions ===

Folding activation functions are extensively used in the pooling layers in convolutional neural networks, and in output layers of multiclass classification networks. These activations perform aggregation over the inputs, such as taking the mean, minimum or maximum. In multiclass classification the softmax activation is often used.


=== Table of activation functions ===
The following table compares the properties of several activation functions that are functions of one fold x from the previous layer or layers:

The following table lists activation functions that are not functions of a single fold x from the previous layer or layers:

^  Here, 
  
    
      
        
          δ
          
            i
            j
          
        
      
    
    {\displaystyle \delta _{ij}}
  
 is the Kronecker delta.
^  For instance, 
  
    
      
        j
      
    
    {\displaystyle j}
  
 could be iterating through the number of kernels of the previous neural network layer while 
  
    
      
        i
      
    
    {\displaystyle i}
  
 iterates through the number of kernels of the current layer.


=== Quantum activation functions ===

In quantum neural networks programmed on gate-model quantum computers, based on quantum perceptrons instead of variational quantum circuits, the non-linearity of the activation function can be implemented with no need of measuring the output of each perceptron at each layer. The quantum properties loaded within the circuit such as superposition can be preserved by creating the Taylor series of the argument computed by the perceptron itself, with suitable quantum circuits computing the powers up to a wanted approximation degree. Because of the flexibility of such quantum circuits, they can be designed in order to approximate any arbitrary classical activation function.


== See also ==
Logistic function
Rectifier (neural networks)
Stability (learning theory)
Softmax function


== References ==


== Further reading ==
Kunc, Vladimír; Kléma, Jiří (2024-02-14), Three Decades of Activations: A Comprehensive Survey of 400 Activation Functions for Neural Networks, arXiv, doi:10.48550/arXiv.2402.09092, arXiv:2402.09092
Nwankpa, Chigozie; Ijomah, Winifred; Gachagan, Anthony; Marshall, Stephen (2018-11-08). "Activation Functions: Comparison of trends in Practice and Research for Deep Learning". arXiv:1811.03378 [cs.LG].
Dubey, Shiv Ram; Singh, Satish Kumar; Chaudhuri, Bidyut Baran (2022). "Activation functions in deep learning: A comprehensive survey and benchmark". Neurocomputing. 503. Elsevier BV: 92–108. arXiv:2109.14545. doi:10.1016/j.neucom.2022.06.111. ISSN 0925-2312.