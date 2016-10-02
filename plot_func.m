function plot_func(f, interval)
  % f est une fonction
  % interval un tableau [x0, x1]
  x = (interval(1):0.05:interval(2));
  y = zeros(length(x));
  for i=(1:length(x))
    y(i) = f(x(i));
  end
  plot(x,y);
endfunction
