
function func = negate(inFunc)
% NFUNC = NEGATE(FUNC)
%   Return the NOT composition of a function - ie, if such a function
%   returns a true value, this would return false, and vice versa.
%
import functional.*; % Added by node for package support.
  func = @(i) ~inFunc(i);
end
