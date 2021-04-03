# An analysis of the Miller model in predicting influenza spread


The Miller model combines contact networks, probability theory, and infectious-disease dynamics in order to mathematically describe how diseases can spread amongst a population. Following Miller’s work closely, we construct a theory of how a population can be modelled by a network—each node in the network represents an individual, and each edge indicates social contact through which the infection can spread. In order to test whether the Miller model is adequate in describing the spread of influenza, we derive the Miller model using the susceptible-infected-recovered (SIR) model. We assume a Poisson degree distribution for the network and fit the model to influenza spread data. The average time for a new individual to become infected was estimated to be 771 days. And the average degree of the network was estimated to be 31. The method of analysis and the model assumptions need to be reconsidered as the results are unrealistic.

### Data
Test the predictive power of Miller’s model of infectious disease spread using flu-induced hospital admissions data. All datasets were sourced from the United States CDC website and were structured. The data detailed the weekly number of hospital admissions from influenza-like symptoms.

### Method
- Derive the Miller model: the model is comprised of (1) the SIR model which describes infectious disease-spread and (2) a probabilistic contact network which describes how social interations will spread the disease.
– Clean the structured data in `R`.
– Numerically solve the system of ordinary differential equations in `Matlab`.
– Build the predictive model using non-linear regression in `R`.

### Results
The model successfully predicted when the peak number of infections would occur and accurately described the behaviour of the tails. However, the assumption that society can be represented by a Poisson-degree-distribution seemed unreasonable. And so the results were quite unrealistic. A more realistic choice of degree distribution would be needed to accurately make predictions.
