
%[-2; -1; 1; 2], [10; 4; 6; 3], 1
# P est l'image de la fonction
function image = base_newton(x, y, t)
  % calcul des omegas
  omega = [];
  for k=1:length(x)
    omega(k) = 1;
    for i=1:k
      omega(k) = omega(k) * (t - x(i));
    end
    %disp('omega(',k,') = ', omega(k));
    printf('omega(%d) = %d\n',k,omega(k))
  end
  % calcul des coefficients

  P = zeros(length(x));
  for k=1:length(x)
    for col=1:k
      P(k,col) = 1;
      for i=1:col
        if i-1 == 0
          'lol'
        else
          %(x(k) - x(i-1))
          P(k,col) = P(k,col) * (x(k) - x(i-1));
        end
      end
    end
  end
  P
  alpha = P \ y




endfunction
