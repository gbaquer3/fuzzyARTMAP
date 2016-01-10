#' Adds a new category to the given weight matrix and map field.
#' 
#' This function returns a new weight matrix which is identical to the
#' given weight matrix except that it contains one more category which
#' is initialized to all 1's. It also returns a new map field matrix
#' which is identical to the given map field matrix except that it contains
#' one more element initialized to 0.
#' @title ARTMAP_Add_New_Category
#' @param weight Matrix of size NumFeatures-by-NumCategories which holds the weights of the network.
#' @param mapField Matrix of size 1-by-NumCategories which holds the associations between categories and classes.
#' @return Pair of values [RESIZEDWEIGHT, RESIZEDMAPFIELD]. The RESIZEDWEIGHT is a matrix of size NumFeatures-by-NumCategories+1
#' which holds the weights of the old matrix plus a new category of all
#' values of 1. The RESIZEDMAPFIELD is a matrix of size 1-by-NumCategories+1
#' which holds the given map field matrix except that it contains
#' one more element initialized to 0.
#' 
ARTMAP_Add_New_Category=function(weight, mapField)
{
# ARTMAP_Add_New_Category    Adds a new category to the given weight matrix and map field.
#    [RESIZEDWEIGHT, RESIZEDMAPFIELD] = ARTMAP_Add_New_Category(WEIGHT, MAPFIELD)
#    This function returns a new weight matrix which is identical to the
#    given weight matrix except that it contains one more category which
#    is initialized to all 1's. It also returns a new map field matrix
#    which is identical to the given map field matrix except that it contains
#    one more element initialized to 0.
# 
#    The input parameters are as follows:
#    The WEIGHT is a matrix of size NumFeatures-by-NumCategories which
#    holds the weights of the network. The MAPFIELD is a matrix of size
#    1-by-NumCategories which holds the associations between categories
#    and classes.
#
#    The return parameters are as follows:
#    The RESIZEDWEIGHT is a matrix of size NumFeatures-by-NumCategories+1
#    which holds the weights of the old matrix plus a new category of all
#    values of 1. The RESIZEDMAPFIELD is a matrix of size 1-by-NumCategories+1
#    which holds the given map field matrix except that it contains
#    one more element initialized to 0.


# Make sure that the user specified the weight and map field matrices.
if(nargs() != 2)
{
  stop('You must specify the weight and map field parameters.');    
}

# Create the return weight matrix with the right dimensions.
numFeatures=nrow(weight);
numCategories= ncol(weight);

newCategory = matrix(1,numFeatures, 1);
resizedWeights = cbind(weight,newCategory);

# Create the return map field matrix with the right dimensions.
resizedMapField = cbind(mapField, 0); #Assuming matrix and not concatenation result (c())


return (list(resizedWeights,resizedMapField));
}