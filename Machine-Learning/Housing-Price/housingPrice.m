load featuresX.dat
load priceY.dat

x = featuresX(:, 1);
y = priceY;

theta = pinv(x'*x)*(x'*y);
h = theta*x;

plot(x, y, "*");
hold on;
plot(x, h);
xlabel("Size (feet^2)");
ylabel("Price ($)");
legend("examples", "hypothesis");
title("Housing-Price");
print -dpng "Housing-Price.png";
