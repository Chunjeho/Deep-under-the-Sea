load featuresX.dat
load priceY.dat

x = featuresX(:, 1);
x0 = ones(size(x)(:,1),1);
x = [[x0] x];
y = priceY;

theta = pinv(x'*x)*(x'*y);

h = theta(2)*x(:,2) + theta(1);

plot(x(:,2), y, "*");
hold on;
plot(x(:,2), h);
xlabel("Size (feet^2)");
ylabel("Price ($)");
legend("examples", "hypothesis");
title("Housing-Price");

print -dpng "Housing-Price.png";