# 2.a)
disp('Base Canonique');

figure('position', [100, 100, 500, 800])    % postion + size

subplot (3, 1, 1)
plot_interpo(@base_vandermonde,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.b)
disp('Base de Lagrange');
subplot (3, 1, 2)
plot_interpo(@base_lagrange,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

# 2.c)
disp('Base de Newton');
subplot (3, 1, 3)
plot_interpo(@base_newton,[-2; -1; 1; 2], [10; 4; 6; 3], [-2,2]);

title('Base canonique, Base de Lagrange, Base de Newton');
pause(3); %pause du graphique

# 3. Phenomene de Runge

figure('position', [100, 100, 500, 800])    % postion + size

%affichage de g
subplot (3, 1, 1)
plot_func(@runge, [-1, 1])

mx = [];
my = [];

subdivision = 9;
for i=1:subdivision
  mx(i) = -1 + i*(2/subdivision);
  my(i) = runge(mx(i));
end
mx = mx';
my = my';

subplot (3, 1, 2)
plot_interpo(@base_lagrange,mx, my, [-1,1]);

subdivision = 19;
for i=1:subdivision
  mx(i) = -1 + i*(2/subdivision);
  my(i) = runge(mx(i));
end
mx = mx';
my = my';


subplot (3, 1, 3)
plot_interpo(@base_lagrange,mx, my, [-1,1]);

title('la fonction, puis la fonction interpolée avec n=9, n=19')
pause(5)
