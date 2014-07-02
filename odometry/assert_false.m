function [ ] = assert_false( arg )
% ASSERT_FALSE Verify the argument is false
%
% Note that MATLAB also has a unit test framework (starting with 2013a):
%   http://www.mathworks.com/help/matlab/matlab-unit-test-framework.html
% This framework provides its own assertion methods. However, since I
% didn't know what version people would have, I just wrote my own for this
% workshop.
%

if arg
    error('Assertion failed');
end

end