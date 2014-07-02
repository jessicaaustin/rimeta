function [ ] = assert_equal( expected, actual, tolerance )
% ASSERT_EQUAL Verify that two values or vectors are equal
%
% Due to numerical error, it is rare that two values will be exactly equal.
% For this reason, the method checks if the difference between them is
% smaller than some acceptable tolerance. By default, this is 1E-12, but
% can be overridden.
%
% Note that MATLAB also has a unit test framework (starting with 2013a):
%   http://www.mathworks.com/help/matlab/matlab-unit-test-framework.html
% This framework provides its own assertion methods. However, since I
% didn't know what version people would have, I just wrote my own for this
% workshop.
%

if nargin < 3
    tolerance = 1E-12;
end
assertion = all(abs(expected-actual)<tolerance);

if ~assertion
    error('Assertion error:\n\tExpected: [%s] \n\tActual:   [%s] ', num2str(expected), num2str(actual));
end

end