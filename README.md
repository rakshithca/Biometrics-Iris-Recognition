# Biometrics-Iris-Recognition
Design and Evaluation of Iris Recognition System
# CS-599:Biometircs fall 2019 
## Assignment 2 :  Design and Evaluate an Iris Recognition System

Group:
  1. Rakshith Churchagundi Amarnath
  2. Urvi Chandreshkumar Sheth
  3. Aditya Yaji


## Task 

design and evaluate an iris recognition system using the data provided and an open source iris recognition software.  Design an iris biometrics system by using LG2200 2008 data as gallery and (1) use LG4000 as probes; (2) use LG2200 2010 data as probes. Feel free to choose multiple iris images per subject as probes/galleries. ALL possible subjects in the three datasets should be used.

Using Libor Masek's the open source iris matching code 
	1. generated genuine and imposter distributions.
	2. ROC curves for (1) and (2)
	3. CMC Curve for (1) and (2)


## Data
1. Three iris datasets collected by LG2200 and LG4000 on different dates.
2. Images taken from same subject’s both eyes are stored in the same subfolder.
3. A text file in each subfolder specifies attributes of each image in this folder. Sequenceid: the image’s filename.


## files enlisted
trial_4000.m (Code to create iris template and find hamming distance for LG4000 Probe)
trial_2200.m (Code to create iris template and find hamming distance for LG2200 Probe)
Report.pptx (The file containing findings and graphs)
Graph_2200.ipynb (Code to generate ROC,CMC and Histogram for LG2200 probe)
Graph_4000.ipynb (Code to generate ROC,CMC and Histogram for LG4000 probe)
Values_2200.xlsx (All Hamming distances for LG2200 probe to Gallery)(Folder-wise)
Values_4000.xlsx (Hamming distance for LG4000 probe to Gallery) (Folder-wise)
Open Source code (Libor Masek's open source iris matching code)


## Methodology

Iris Recognition system, we evaluate and design the Iris Recognition by using given databases.
From Database, we have used LG2200-2008 folder's images from all subjects as gallery, LG2200-2010 folder's  images as probes and LG4000-2010 folder's images as probes (we took 1-1 images from all sub folders). 
From Open Source Iris matching code, we have made one source code which is using functions from open source iris matching code. From that we can calculate Hamming Distance and we can do 1-n matching for iris system for all image set at a time. From Hamming distance result set, which is stored in a xlsx file. 
After that we derive Histogram in ipynb file only. In that, we do code to derive threshold values, TMR and FMR by using array function so that we can derive ROC curve and CMC Curve.

