#!/bin/bash

# Required graphviz package

# Dot files generation
#java -cp /path/to/weka/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /path/to/arff/dataset/breast-w.arff -g > wisconsin_breast_cancer.dot

#java -cp /path/to/weka/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /path/to/arff/dataset/credit-g.arff -g > german_credit.dot

#java -cp /path/to/weka/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /path/to/arff/dataset/segment.arff -g > segment.dot

#java -cp /path/to/weka/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t  /path/to/arff/dataset/vehicle.arff -g > vehicle.dot

# Images generation
#dot -Tpng -o wisconsin_breast_cancer.png wisconsin_breast_cancer.dot 
#dot -Tpng -o german_credit.png german_credit.dot
#dot -Tpng -o segment.png segment.dot
#dot -Tpng -o vehicle.png vehicle.dot

#dot -Tsvg -o wisconsin_breast_cancer.svg wisconsin_breast_cancer.dot 
#dot -Tsvg -o german_credit.svg german_credit.dot
#dot -Tsvg -o segment.svg segment.dot
#dot -Tsvg -o vehicle.svg vehicle.dot

## Use unflatten to spread the leafs af a very large tree, piping to dot eventually, ie:
## unflatten -l10 german_credit.dot | dot -Tpdf -o gc.pdf

dot -Tpdf -o wisconsin_breast_cancer.pdf wisconsin_breast_cancer.dot 
dot -Tpdf -o german_credit.pdf german_credit.dot
dot -Tpdf -o segment.pdf segment.dot
dot -Tpdf -o vehicle.pdf vehicle.dot

#rm *.dot
