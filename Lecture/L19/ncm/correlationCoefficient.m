function r = correlationCoefficient(x,y,n)
r = (n .* (sum((x .* y)) - ((sum(x)) .* (sum(y)))))/((sqrt(n .* ((sum(x.^2)) - (sum(x).^2))) .* sqrt(n .* ((sum((y.^2))) - (sum(y).^2)))));
return 