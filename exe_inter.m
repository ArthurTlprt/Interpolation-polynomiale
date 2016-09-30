# 2.a)
disp('Base Canonique');

figure('position', [100, 100, 500, 800])    % postion + size

subplot (3, 1, 1)
plot_func(@base_vandermonde,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.b)
disp('Base de Lagrange');
subplot (3, 1, 2)
plot_func(@base_lagrange,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.c)
disp('Base de Newton');
subplot (3, 1, 3)
plot_func(@base_newton,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

title('Base canonique, Base de Lagrange, Base de Newton');
pause(10); %pause du graphique
