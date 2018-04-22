function new_vertex = face_cropping(ori_vertex,center,radius)
index = zeros(length(ori_vertex),1);
for i=1:length(ori_vertex)
    data_coord_x = ori_vertex(i,1);
    data_coord_y = ori_vertex(i,2);
    data_coord_z = ori_vertex(i,3);
    temp_radius = (data_coord_x - center(1,1)).^2 + (data_coord_y - center(1,2)).^2 + (data_coord_z - center(1,3)).^2;
    if temp_radius <= radius *  radius
        index(i,1) = i;
    end
end
index(find(index(:, 1)==0), :) = [];

new_vertex = zeros(length(index),3);
for i = 1:length(index)
    new_vertex(i,:) = ori_vertex(index(i,1),:);
end
