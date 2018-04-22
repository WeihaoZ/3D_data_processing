function nose_tip = nosetip_detection(pointCloud)
[~,i] = min(pointCloud(3,:));
[~,j] = max(pointCloud(3,:));
if (pointCloud(1,i)^2 + pointCloud(2,i)^2) < 1500
    nose_tip = pointCloud(:,i);
elseif (pointCloud(1,j)^2 + pointCloud(2,j)^2) < 1500
    nose_tip = pointCloud(:,j);
else
    disp('noise point!')
    nose_tip = pointCloud(:,j);
end
