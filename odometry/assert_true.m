function [ ] = assert_true( arg )
% ASSERT_TRUE Verify the argument is true
%
% Note that MATLAB also has a unit test framework (starting with 2013a):
%   http://www.mathworks.com/help/matlab/matlab-unit-test-framework.html
% This framework provides its own assertion methods. However, since I
% didn't know what version people would have, I just wrote my own for this
% workshop.
%

if ~arg
    error('Assertion failed');
end

end