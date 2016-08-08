#!/bin/bash

# Required graphviz and dot2tex packages

rm *.tikz

# Dot files generation
#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/breast-w.arff -g > wisconsin_breast_cancer.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/credit-g.arff -g > german_credit.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/nursery.arff -g > nursery.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t /home/giuseppe/data/uci/nominal/segment.arff -g > segment.dot

#java -cp /home/giuseppe/weka-3-8-0/weka.jar weka.classifiers.trees.REPTree -M 2 -V 0.001 -N 3 -S 1 -L -1 -I 0.0 -t  /home/giuseppe/data/uci/nominal/vehicle.arff -g > vehicle.dot

# Images generation
#dot -Tpng -o wisconsin_breast_cancer.png wisconsin_breast_cancer.dot 
#dot -Tpng -o german_credit.png german_credit.dot
#dot -Tpng -o nursery.png nursery.dot
#dot -Tpng -o segment.png segment.dot
#dot -Tpng -o vehicle.png vehicle.dot

# Tikz files generation
dot2tex --preproc wisconsin_breast_cancer.dot | dot2tex --figonly -t math > wisconsin_breast_cancer.tikz
dot2tex --preproc german_credit.dot | dot2tex --figonly -t math > german_credit.tikz
dot2tex --preproc nursery.dot | dot2tex --figonly -t math > nursery.tikz
dot2tex --preproc segment.dot | dot2tex --figonly -t math > segment.tikz 
dot2tex --preproc vehicle.dot | dot2tex --figonly -t math > vehicle.tikz

#dot2tex --preproc -o wisconsin_breast_cancer.tikz wisconsin_breast_cancer.dot 
#dot2tex --preproc -o german_credit.tikz german_credit.dot
#dot2tex --preproc -o nursery.tikz nursery.dot
#dot2tex --preproc -o segment.tikz segment.dot
#dot2tex --preproc -o vehicle.tikz vehicle.dot

#rm *.dot
