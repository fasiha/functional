
function b = islambda(a)
% BOOL = ISLAMBDA(VALUE)
%   Returns true when VALUE is a function handle, either an explicit lambda
%   expression or a named function.
%
import functional.*; % Added by node for package support.

  b = strcmp(class(a), 'function_handle');
end
