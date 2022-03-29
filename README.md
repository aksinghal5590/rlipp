# RLIPP: Relative improvement in predictive power

RLIPP is used to quantify and compare the importance of subsystems in a visible neural network (VNN),
where importance of a subsystem is the Spearman correlation of a linear regression model.

More info here: https://www.nature.com/articles/nmeth.4627

This package implements multiprocessing using joblib (https://joblib.readthedocs.io/en/latest/). 
It can anywhere from a few hours to weeks to execute the code depending upon the size of the data
and the number of available cores.
