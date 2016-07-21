%This code implements CIKM 2016 paper "Top-N Recommendation on Graphs" by Zhao Kang ... 
%If you use our code, please cite our paper.

%First please run code splitwithtest.m, then this one.
load('yahoo_cos.mat');

alpha=[ 5e-3];  
beta=[5e-6 ];

rhr=zeros(5,1);thr=zeros(5,1);
rarhr=zeros(5,1);tarhr=zeros(5,1);
for i=1:length(alpha)
 for j=1:length(beta)

                  fprintf('paras %12.6f%12.6f  \n',alpha(i),beta(j));
   load('s1.mat') 
[rhr1,rarhr(1)]=dualgraph(rX,tD,tZ,rT,L,alpha(i),beta(j));
[thr1,tarhr(1)]=dualgraph(tX,D5,Z5,tT,L,alpha(i),beta(j));

 load('s2.mat') 
[rhr2,rarhr(2)]=dualgraph(rX,tD,tZ,rT,L,alpha(i),beta(j));
[thr2,tarhr(2)]=dualgraph(tX,D1,Z1,tT,L,alpha(i),beta(j));

   load('s3.mat') 
[rhr3,rarhr(3)]=dualgraph(rX,tD,tZ,rT,L,alpha(i),beta(j));
[thr3,tarhr(3)]=dualgraph(tX,D2,Z2,tT,L,alpha(i),beta(j));

 load('s4.mat') 
[rhr4,rarhr(4)]=dualgraph(rX,tD,tZ,rT,L,alpha(i),beta(j));
[thr4,tarhr(4)]=dualgraph(tX,D3,Z3,tT,L,alpha(i),beta(j));

 load('s5.mat') 
[rhr5,rarhr(5)]=dualgraph(rX,tD,tZ,rT,L,alpha(i),beta(j));
[thr5,tarhr(5)]=dualgraph(tX,D4,Z4,tT,L,alpha(i),beta(j));


rhr=(rhr1+rhr2+rhr3+rhr4+rhr5)/5;
thr=(thr1+thr2+thr3+thr4+thr5)/5;
fprintf('Training HR %12.6f ARHR%12.6fTesting HR%12.6f ARHR %12.6f \n',rhr(2),mean(rarhr),thr(2),mean(tarhr))

             end
end