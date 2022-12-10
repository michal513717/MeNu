syms x real;
f = 2*x;

f0 = 1;
f1 = x;
f2 = Czb(f1,f0);
f3 = Czb(f2,f1);
f4 = Czb(f3, f2);
f5 = Czb(f4,f3);
f6 = Czb(f5,f4);
f7 = Czb(f6,f5);

fplot(f0, [-1 1]); hold on;
fplot(f1, [-1 1]); hold on;
fplot(f2, [-1 1]); hold on;
fplot(f3, [-1 1]); hold on;
fplot(f4, [-1 1]); hold on;
fplot(f5, [-1 1]); hold on;
fplot(f6, [-1 1]); hold on;
fplot(f7, [-1 1]); hold on;

function equation = Czb(a, b)
    syms x real;
    equation = 2*x*a - b;


end