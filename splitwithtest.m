
X=Trainn_yahoo;
[m,n]=size(X);
s=floor(m/5);
T=L2;
TT=T;
D=test;
DD=D;
Z=test_zhong_yahoo;
ZZ=Z;

r=randperm(m);
a=r(1:s);b=r(s+1:2*s);c=r(2*s+1:3*s);d=r(3*s+1:4*s);e=r(4*s+1:end);
X1=X(a,:);
T1=T(a,a);
D1={};
for i=1:length(a)
D1{i}=D{a(i)};
end
Z1=Z(a,:);

X2=X(b,:);
T2=T(b,b);
D2={};
for i=1:length(b)
D2{i}=D{b(i)};
end
Z2=Z(b,:);

X3=X(c,:);
T3=T(c,c);
D3={};
for i=1:length(c)
D3{i}=D{c(i)};
end
Z3=Z(c,:);

X4=X(d,:);
T4=T(d,d);
D4={};
for i=1:length(d)
D4{i}=D{d(i)};
end
Z4=Z(d,:);

X5=X(e,:);
T5=T(e,e);
D5={};
for i=1:length(e)
D5{i}=D{e(i)};
end
Z5=Z(e,:);

rX=[X1;X2;X3;X4];
TT(e,:)=[];
TT(:,e)=[];
rT=TT;
tX=[X5];
tT=[T5];

tD=[D1 D2 D3 D4];
tZ=[Z1;Z2;Z3;Z4];

save('s1.mat','rX','rT','tD','tZ','tX','tT','D5','Z5')

rX=[X2;X3;X4;X5];
TT=T;
TT(a,:)=[];
TT(:,a)=[];
rT=TT;
tX=[X1];
tT=[T1];

tD=[D2 D3 D4 D5];
tZ=[Z2;Z3;Z4;Z5];

save('s2.mat','rX','rT','tD','tZ','tX','tT','D1','Z1')

rX=[X1;X5;X3;X4];
TT=T;
TT(b,:)=[];
TT(:,b)=[];
rT=TT;
tX=[X2];
tT=[T2];

tD=[D1 D5 D3 D4];
tZ=[Z1;Z5;Z3;Z4];


save('s3.mat','rX','rT','tD','tZ','tX','tT','D2','Z2')

rX=[X2;X1;X4;X5];
TT=T;
TT(c,:)=[];
TT(:,c)=[];
rT=TT;
tX=[X3];
tT=[T3];

tD=[D2 D1 D4 D5];
tZ=[Z2;Z1;Z4;Z5];
save('s4.mat','rX','rT','tD','tZ','tX','tT','D3','Z3')

rX=[X2;X1;X3;X5];
TT=T;
TT(d,:)=[];
TT(:,d)=[];
rT=TT;
tX=[X4];
tT=[T4];

tD=[D2 D1 D3 D5];
tZ=[Z2;Z1;Z3;Z5];
save('s5.mat','rX','rT','tD','tZ','tX','tT','D4','Z4')
