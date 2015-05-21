
function func = konst(value)
% FUNC = KONST(VALUE)
%   Return a function that always returns VALUE.
%
import functional.*; % Added by node for package support.

  function ret = konstFunc(varargin)
    ret = value;
  end
  func = @konstFunc;
end