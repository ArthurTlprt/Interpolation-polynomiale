
%[-2; -1; 1; 2], [10; 4; 6; 3], 1
function image = base_newton(x, y, t)

  % calcul des omegas(t)
  omega = [];
  for k=1:length(x)
    omega(k) = 1;
    for i=1:k-1
      omega(k) = omega(k) * (t - x(i));
    end
    %printf('omega(%d) = %d\n',k,omega(k))
  end
  omega
  % calcul des coefficients alphas
  P = zeros(length(x));
  for k=1:length(x)
    for col=1:k
      P(k,col) = 1;
      for i=1:col
        if i-1 ~= 0
          P(k,col) = P(k,col) * (x(k) - x(i-1));
        end
      end
    end
  end
  y
  alpha = P \ y;
  % calcul de la somme des alpha * omega
  image=0;
  for i=1:length(x)
    image = image + omega(i)*alpha(i);
  end

endfunction
