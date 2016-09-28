
% TEST SCRIPT
tic
G=[0 1 1 1 0 0;...  % precedence matrix
   0 0 0 0 1 0;...
   0 0 0 0 1 0;...
   0 0 0 0 0 1;...
   0 0 0 0 0 1;...
   0 0 0 0 0 0];
NbrSim=10;  % number of simulation
Nt=6;       % number of task
Nv=8;       % number of value per ditribution
U=0.75;     % utilization rate

DMP=[];
DMPmax=0;
    
for i=1:NbrSim
    Tau=generate_tasks(Nt,Nv,U);               % generate random task set
    T = transformPrecedenceTaskSet ( Tau,G );  % modify timing paramters
    [dmp,DMPmax]=sporadicSchedTest(T,0.1);     % schedulability test
    DMP=[DMP DMPmax];
end
OurTestRate=(1-DMP)*100
toc