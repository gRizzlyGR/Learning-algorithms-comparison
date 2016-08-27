#!/bin/bash

# Required graphviz and dot2tex packages

#rm *.tikz

# Dot files generation
#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/breast-w.arff -g > wisconsin_breast_cancer.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/credit-g.arff -g > german_credit.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/nursery.arff -g > nursery.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/segment.arff -g > segment.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t  /home/giuseppe/data/uci/nominal/vehicle.arff -g > vehicle.dot

java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t  /home/giuseppe/IA/Sperimentazione/data/hepatitis.arff -g > hepatitis.dot

# Images generation
#dot -Tpng -o wisconsin_breast_cancer.png wisconsin_breast_cancer.dot 
#dot -Tpng -o german_credit.png german_credit.dot
#dot -Tpng -o nursery.png nursery.dot
#dot -Tpng -o segment.png segment.dot
#dot -Tpng -o vehicle.png vehicle.dot

#dot -Tsvg -o wisconsin_breast_cancer.svg wisconsin_breast_cancer.dot 
#dot -Tsvg -o german_credit.svg german_credit.dot
#dot -Tsvg -o nursery.svg nursery.dot
#dot -Tsvg -o segment.svg segment.dot
#dot -Tsvg -o vehicle.svg vehicle.dot

## Use unflatten to spread the leafs af a very large tree, piping to dot eventually, ie:
## unflatten -l10 german_credit.dot | dot -Tpdf -o gc.pdf

#dot -Tpdf -o wisconsin_breast_cancer.pdf wisconsin_breast_cancer.dot 
#dot -Tpdf -o german_credit.pdf german_credit.dot
#dot -Tpdf -o nursery.pdf nursery.dot
#dot -Tpdf -o segment.pdf segment.dot
#dot -Tpdf -o vehicle.pdf vehicle.dot

dot -Tpdf -o hepatitis.pdf hepatitis.dot

#rm *.dot
