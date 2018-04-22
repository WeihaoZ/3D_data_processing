function new_data = median_filter(ori_data,nei_num)
if mod(nei_num,2) == 0
	nei_num = nei_num + 1;
	med_num  = (nei_num + 1) / 2;
else
	nei_num = nei_num + 1;
	med_num = (nei_num + 2) / 2;
end

[index,~] = knnsearch(ori_data,ori_data,'k',nei_num);

nei = zeros(nei_num,3);
new_data = zeros(length(ori_data),3);
for i = 1:length(ori_data)
    for j = 1:nei_num
        nei(j,:) = ori_data(index(i,j),:);
    end
    x = sort(nei(:,1)'); 
    y = sort(nei(:,2)'); 
    z = sort(nei(:,3)'); 
    
    new_data(i,1) = x(med_num);
    new_data(i,2) = y(med_num);
    new_data(i,3) = z(med_num);
end
end

%new_pc = pointCloud(new_data);
%showPointCloud(new_pc);
% cdzs_test_data(9).vertex     rotation_shape{1,4}
% ori_pc = pointCloud(ori_data);
%figure;showPointCloud(ori_pc);
