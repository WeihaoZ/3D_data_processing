% mydata1 = mydata;
% mydata2 = mydata;
% mydata3 = mydata;
% for i = 1:700
%     lefteye_idx = find(mydata(i).VV(:,1) > min(mydata(1).feature5(3,1),mydata(1).feature5(4,1))...
%         & mydata(i).VV(:,1) < max(mydata(1).feature5(3,1),mydata(1).feature5(4,1))...
%         & mydata(i).VV(:,2) > min(mydata(1).feature5(3,2),mydata(1).feature5(4,2))...
%         & mydata(i).VV(:,2) < max(mydata(1).feature5(3,2),mydata(1).feature5(4,2)));
%     righteye_idx = find(mydata(i).VV(:,1) > min(mydata(1).feature5(1,1),mydata(1).feature5(2,1)) ...
%         & mydata(i).VV(:,1) < max(mydata(1).feature5(1,1),mydata(1).feature5(2,1)) ...
%         & mydata(i).VV(:,2) > min(mydata(1).feature5(1,2),mydata(1).feature5(2,2)) ...
%         & mydata(i).VV(:,2) < max(mydata(1).feature5(1,2),mydata(1).feature5(2,2)));
%     nose_idx = find(mydata(i).VV(:,1) > mydata(1).feature5(6,1)...
%         & mydata(i).VV(:,1) < mydata(1).feature5(5,1)...
%         & mydata(i).VV(:,2) > mydata(1).feature5(8,2)...
%         & mydata(i).VV(:,2) < mydata(1).feature5(7,2));
%     
%     mydata1(i).VV(lefteye_idx,:) = [];
%     mydata2(i).VV(righteye_idx,:) = [];
%     mydata3(i).VV(nose_idx,:) = [];
%     
% %     pc_out = pointCloud(mydata(i).VV);
% %     pc_out1 = pointCloud(mydata1(i).VV);
% %     pc_out2 = pointCloud(mydata2(i).VV);
% %     pc_out3 = pointCloud(mydata3(i).VV);
% %     pc_downsample = pcdownsample(pc_out,'gridAverage',3.0);
% %     pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
% %     pc_downsample1 = pcdownsample(pc_out1,'gridAverage',3.0);
% %     pc_downsample1 = pcdownsample(pc_downsample1,'random',2048/size(pc_downsample1.Location, 1));
% %     pc_downsample2 = pcdownsample(pc_out2,'gridAverage',3.0);
% %     pc_downsample2 = pcdownsample(pc_downsample2,'random',2048/size(pc_downsample2.Location, 1));
% %     pc_downsample3 = pcdownsample(pc_out3,'gridAverage',3.0);
% %     pc_downsample3 = pcdownsample(pc_downsample3,'random',2048/size(pc_downsample3.Location, 1));
% %     mydata(i).VV = pc_downsample.Location;
% %     mydata1(i).VV = pc_downsample1.Location;
% %     mydata2(i).VV = pc_downsample2.Location;
% %     mydata3(i).VV = pc_downsample3.Location;
% end
% figure, pcshow(pointCloud(mydata(1).VV));
% xlabel('x-axis');
% ylabel('y-axis');
% zlabel('z-axis');
% hold on;scatter3(mydata(1).feature5(1,1), mydata(1).feature5(1,2), mydata(1).feature5(1,3));
% for i = 1:2800
%     if mod(i-1,28)>=0 & mod(i-1,28)<=6
%         mydata_2800(i) = mydata(floor((i-1)/28) * 7 + mod(i,28))
%     if mod(i-1,28)>=7 & mod(i-1,28)<=13
%         mydata_2800(i) = mydata1(floor((i-1)/28) * 7 + mod(i,28))
%     if mod(i-1,28)>=14 & mod(i-1,28)<=20
%         mydata_2800(i) = mydata2(floor((i-1)/28) * 7 + mod(i,28))
%     if mod(i-1,28)>=21 & mod(i-1,28)<=27 
%         mydata_2800(i) = mydata3(floor((i-1)/28) * 7 + mod(i,28))
% end
