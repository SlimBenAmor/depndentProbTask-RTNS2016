# Artifact Guide

Download and run
-------------
The folder "_RTNS 2016 - Artifact paper 75_" contains two sub-folders one for each experiment presented in the [paper](https://www.dropbox.com/s/e0kd0bsk0gm1adw/rtns2016.pdf?dl=0) to download the folder simply click on the green button marked "Clone or download" then on download zip. You may then extract all the files from the archive.

The first folder named "*Experiment_1*" contains the necessary files to reproduce the results presented in Table 3.The second folder named "*Experiment_2*" will reproduce the results of Figure 4. The code can be executed on Matlab (or equivalent Octave or Scilab). In order to run a certain experiment, set the "current folder" of Matlab on the folder of experiment and execute the "Main_Experiment" script.

Changing initial parameters 
-------------
The provided scripts are set to perform the experiments presented in the [paper](https://www.dropbox.com/s/e0kd0bsk0gm1adw/rtns2016.pdf?dl=0), in order to reproduce their results. 
Further experiments can be be created by changing the input parameters in the "Main_Experiment" scripts.
These input parameters are: 
- number of tasks, denoted by "_NumberOfTasks_".
- number of values per distribution, denoted by "_NumberOfValues_".
- system utilization, denoted by "_Utilization_".

**Note on changing the number of tasks in the system :** _For experiment 1, the number of tasks in the system is set
, and so is the precedence matrix "G" which describes the precedence constraints between tasks.
If the number of tasks is changed then the precedence matrix "G" need to be changed as well, otherwise the experiment will fail. 
The precedence matrix "G" for experiment 2 is randomly generated according to the number of tasks, so in this case the number of tasks can easily be changed._

Hardware and experiments time 
-------------------------------
In our work, we used a windows machine with an Intel i7 processor, 8Gb RAM and Matlab 2014a to perform the two experiments. In this setting
it took about 10 minutes to perform the first experiment and about 50 minutes to perform the second one.
For a simplified Version of these experiment with smaller run time, the number of analysed task sets decreased 
(from 10 in the first experiment and from 100 in the second) to 1.

Results interpretation
-------------------------------

- **First experiment:** The output of the "Main_Experiment1" script is a vector represent the 
schedulability ratio of different task sets analysed. If this ratio is less than 
100% then the task set is not schedulable by the deterministic test illustrated by 
equation (3) in the [paper](https://www.dropbox.com/s/e0kd0bsk0gm1adw/rtns2016.pdf?dl=0). We remark that the produced results are similar to the 
illustrated ones in Table 3 in the [paper](https://www.dropbox.com/s/e0kd0bsk0gm1adw/rtns2016.pdf?dl=0) since we found a high schedulability rate that exceed
90% in most case.

- **Second experiment:** For the "Main_Experiment2" script, the output is a bar graph similar to 
figure 4 in the [paper](https://www.dropbox.com/s/e0kd0bsk0gm1adw/rtns2016.pdf?dl=0) that represent the number of task sets schedulable with a given 
ratio included in 10% interval. We remark an important number of task sets schedulable 
with a ratio between 0-10%. This observation is caused by the generated precedence 
that may impose very strict constraints and make the task set non-schedulable.
Also, we remark a high number of task set schedulable with a rate greater than 90%. This 
happens when the generated precedence are feasible.
There are variability of the number of task sets schedulable with other rates (10-80%). It
can be explained by the randomly generated timing constraints.
