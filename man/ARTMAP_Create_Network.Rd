% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ARTMAP_Create_Network.r
\name{ARTMAP_Create_Network}
\alias{ARTMAP_Create_Network}
\title{ARTMAP_Create_Network}
\usage{
ARTMAP_Create_Network(numFeatures, numClasses, maxNumCategories = 1000,
  vigilance = 0.75, bias = 1e-06, numEpochs = 100, learningRate = 1)
}
\arguments{
\item{numFeatures}{Number of features that the network expects of the input data. Must be a positive integer.}

\item{numClasses}{Number of classes that exist for the supervisory signal. Must be a positive integer greater than 1.}

\item{maxNumCategories}{Maximum number of categories that can be activated during the training process. Defaults to 1000.}

\item{vigilance}{Vigilance parameter that defines the minimum similarity allowed between the input pattern and the weights. Defaults to 0.75.}

\item{bias}{Constant that is used to differentiate between very similar category activation values. Defaults to 0.000001}

\item{numEpochs}{Maximum number of training iterations allowed. Defaults to 100.}

\item{learningRate}{Learning rate. Defaults to 1.}
}
\value{
Structure that holds all of the information for the network. It must be passed into both ARTMAP_LEARN() and 
ARTMAP_CLASSIFY(). The fields of this structure are numFeatures, numCategories, maxNumCategories, numClasses, weight 
(an initialized weight vector with the right dimensions), mapField (an initialized map field with the right dimensions), 
vigilance, bias, numEpochs, neededEpochs (the number of epochs needed in the last training) and learningRate.
}
\description{
Creates a new ARTMAP network.
}
\details{
This function creates a new ARTMAP network with the specified number
features and classes. The network is created to expand the number of 
categories as needed. The vigilance parameter defaults to 0.75.
The initial number of categories is set to 1. The maximum number
of categories defaults to 100. The bias defaults to 0.000001, the
number of epochs defaults to 100, and the learning rate defaults 
to 1.0 (fast-learning).
}

