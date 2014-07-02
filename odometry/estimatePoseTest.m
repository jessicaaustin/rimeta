
%% (print message)

fprintf('Running all tests...\n');

%% Test: No movement

clear;
readings = [0 0
            0 0
            0 0];
[x, y, theta] = estimatePose(readings);

assert_equal(0, theta);
assert_equal(0, x);
assert_equal(0, y);


%% (print message)

fprintf('All tests passed.\n\n');
