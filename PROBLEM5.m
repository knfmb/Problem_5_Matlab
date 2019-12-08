n = 0:1:199;
x = input ('Input a number: ');
plot(n,x,'--m','linewidth',0.5);
hold;

for range = 1:200
    
    n = range;
    n1 = range+1;
    n2 = range+2;
    n3 = range-1;
    n4 = range-2;
    
    if range == 1
        y = -1.5.*x(n) + 2.*x(n1) - 0.5.*x(n2);
        plot (range,y,'--ks');
    end
    
    if range > 1 && range <= 199
        y = 0.5.*x(n1) - 0.5.*x(n3);
        plot (range,y,'--ks');
    end
    
    if range == 200
        y = 1.5.*x(n) - 2.*x(n3) + 0.5.*x(n4);
        plot (range,y,'--ks');
    end
end

legend('x(n)','y(n)')
        