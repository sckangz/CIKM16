
function [hr,arhr]=dualgraph(Trainn,test,test_zhong,L2,L,alpha,beta)
X=Trainn;
U=lyap(beta*L2+eye(size(L2)),alpha*L,-X);
zhong = zeros(1,5);
po = 0;
REC=U;
hr = zeros(1,5);
for i = 1:size(Trainn,1)
    value = REC(i,test{i});
    value1 = REC(i,test_zhong(i));
    position = length(find(value > value1)) + 1;
    for n = 5:5:25
        if((position <= n)&(value ~= min(value1)))
            zhong(n/5) = zhong(n/5) + 1;
            if n == 10
                po = po + 1/position;
            end
        end
    end
end
hr = zhong/size(Trainn,1);
arhr = po/size(Trainn,1);
