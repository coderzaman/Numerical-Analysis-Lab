##func = @(x) x^3 - 0.165 * x^2 +  3.993e-4;
##a=0;
##b=0.11;
##
##tolerance=1e-6;
##max_iteration=100;
##
##
##if func(a) * func(b) >= 0
##    error('Function doesnot change sign over the interval');
##endif
##
##iter=0;
##root=(a+b)/2;
##
##while (b-a)/2 > tolerance
##    c = (a+b)/2;
##    if func(c) == 0
##        root = c;
##        break;
##    elseif func(c) * func(a) < 0
##        b = c;
##    else
##        a = c;
##    endif
##    
##    iter=iter+1;
##    
##    if iter >= max_iteration
##      break
##    endif
##endwhile
##
##disp(root);


##
##func = @ (x) x^3 - 0.165 * x^2 + 3.993e-4;
##a=0;
##b=0.11;
##
##tolerance = 1e-6;
##max_iteration = 100;
##
##if func(a) * func(b) >= 0
##  error('Function doesnot change sign over the interval');
##endif
##
##iter=0;
##root = (a+b) / 2;
##
##while (b-a)/2 > tolerance
##  c = (a + b) / 2;
##  if func(c) == 0
##    root = c;
##    break;
##  elseif func(a) * func(b) < 0
##    b = c;
##  else
##    a = c;
##  endif
##  
##  iter = iter + 1;
##  
##  if iter >= max_iteration
##   break
##  endif
##  
##endwhile
##
##
##disp(root);


##f = @(x) x^3 - 0.165*x^2 + 3.993e-4;
##a=0;
##b=0.11;
##
##max_iteration  = 100;
##tolerance = 1e-6;
##
##if f(a) * f(b) >=0 
##   error('Function doesnot change sign over interval1');
##endif
##
##
##iter = 0;
##root = (a + b)/2;
##
##while (b - a) / 2 > tolerance
##  c = (a + b) / 2;
##  if  f(c) == 0
##    root = c;
##    break;
##  elseif f(a) * f(b) < 0
##    b = c;
##  else
##    a = c;
##  endif
##  
##  iter = iter + 1;
##  
##  if iter >= max_iteration
##    break;
##  endif
##endwhile
##
##disp(root);