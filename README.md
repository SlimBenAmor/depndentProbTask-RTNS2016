# depndentProbTask-RTNS2016
Artifact for the paper "Schedulability analysis of dependent probaabilistic real-time tasks

First download the Artifact archive. There are two folder "Exp1" illustrate 
the results given by table (3) in the paper and "Exp2" provide results of 
figure (4). To run the Artifact you need a basic Matlab version.

Second, change current folder in Matlab to "Exp1" (respectively "Exp2") and 
run the script "sporadicPrecSimFixedGraph" (respectively 
"sporadicPrecSimGeneratedGraph").

The given version of the scripts allow the reproduction of results similar 
to the ones on the paper. But, there is some parameters user can play with 
like: number of task, number of value per distribution et system utilization 
rate. These parameter are named respectively: "Nt", "Nv" and "U" in the script. 

Despite, the precedence matrix "G" used in "sporadicPrecSimFixedGraph" script 
describe the precedence graph illustrated by figure (3) in the paper. This matrix
must be modified if we change the number of task then a different precedence matrix 
may produce a different results. Therefore in this case, user shouldn't change the 
number of task to ensure similar results. but for the second experiment the Precedence 
graph "G" are generated automatically thus we can change the number of task.

We have run these two scripts on Matlab 2014, windows 8.1 and with intel i7 microprocessor
machine and 8Go of RAM. The first script "sporadicPrecSimFixedGraph" take about 10 
minutes and the second one "sporadicPrecSimGeneratedGraph" take 50 minutes. If user
want to run a shorter version, he can change the number of simulation "NbrSim" from 
10 to 1 for the first script and from 100 to 1 for the second.

The output of the "sporadicPrecSimFixedGraph" script is vector represent the 
schedulability rate of different task sets analysed. If this rate is less than 
100% then the task set is not schedulable by the deterministic test illustrated by 
equation (3) in the paper. We remark that the produced results are similar to the 
illustrated ones in the paper since we found a high schedulability rate that exceed
90% in most case.

For the "sporadicPrecSimGeneratedGraph" script, the output is a bar graph similar to 
figure (4) in the paper that represent the number of task sets schedulable with a given 
rate included in 10% interval. We remark an important number of task sets schedulable 
with a rate between 0-10%. This observation is caused by the generated precedence 
that may impose very strict constraints and make the task set non-schedulable.
Also, we remark a high number of task set schedulable with a rate greater than 90%. This 
happens when the generated precedence are feasible.
There are variability of the number of task sets schedulable with other rates (10-80%). It
can be explained by the randomly generated timing constraints.
