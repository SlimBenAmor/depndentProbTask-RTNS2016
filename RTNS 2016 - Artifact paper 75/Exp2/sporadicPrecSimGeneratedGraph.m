
% TEST SCRIPT
tic
NbrSim=100; % number of simulation
Nt=6;       % number of task
Nv=8;       % number of value per ditribution
U=0.75;     % utilization rate

DMP=[];
DMPmax=0;

for i=1:NbrSim
    G = generate_Graph(Nt);                    % generate precedence graph
    Tau=generate_tasks(Nt,Nv,U);               % generate random task set
    T = transformPrecedenceTaskSet ( Tau,G );  % modify timing paramters
    [dmp,DMPmax]=sporadicSchedTest(T,0.1);     % schedulability test
    DMP=[DMP DMPmax];
end

HistBars=zeros(1,11);
for i=1:size(DMP,2)
    HistBars(fix((1-DMP(i))*10)+1)=HistBars(fix((1-DMP(i))*10)+1)+1;
end
figure('units','normalized','outerposition',[0.25 0.25 0.5 0.75])
bar(0:10:100,HistBars);
xlabel('x = schedulability ratio');
ylabel('y = nbr of tsak set');
legend('nbr of task set per 10% schedulability ratio interval','Location','north');
toc