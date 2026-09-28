function [h,tau] = mupdate_h(c,etha,rho,d1)

if etha == 0 
   h = (c/rho)^(1/3)*ones(size(d1))/sqrt(numel(d1)*2); % numel:计算元素的个数
   
else
    a = 27*c/(rho*(etha^3)) + 2;
    C = ((a + (a^2 - 4)^0.5)/2)^(1/3);
    tau = (1 + C + 1/C)/3;
    h = tau*d1;
    
end
return;