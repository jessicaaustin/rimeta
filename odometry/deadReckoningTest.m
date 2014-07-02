
%% (print message)

fprintf('Running all tests...\n');

%% Test: No movement

clear;
numLeftClicks = 0;
numRightClicks = 0;

[x, y, theta] = deadReckoningUpdate(numLeftClicks, numRightClicks);

assert_equal(0, theta);
assert_equal(0, x);
assert_equal(0, y);

%% Test: Move forward in straight line

clear;
numLeftClicks = 20;
numRightClicks = 20;

[x, y, theta] = deadReckoningUpdate(numLeftClicks, numRightClicks);

assert_equal(0, theta);
assert_equal(4.91, x, 0.1);
assert_equal(0, y, 0.1);

%% (print message)

fprintf('All tests passed.\n\n');