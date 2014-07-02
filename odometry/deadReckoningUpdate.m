function [dx, dy, dtheta] = deadReckoningUpdate(numLeftClicks, numRightClicks)

wheelRadius = 20; %[cm]
clicksPerRevolution = 512;
distancePerClick = (2*pi*wheelRadius)/clicksPerRevolution;

% IMPLEMENT THE FULL ALGORITHM HERE
dx = distancePerClick * (numRightClicks + numLeftClicks)/2;
dy = 0;
dtheta = 0;
% IMPLEMENT THE FULL ALGORITHM HERE

end