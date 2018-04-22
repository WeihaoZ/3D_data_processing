%file = '\home\zhouweihao\pointnet\data\BU3DFE\mytrainfile.h5';
% file = 'ply_data_train0.h5';
% h5disp(file);
% pclabel = h5read(file,'/label');
% pcdata = h5read(file,'/data');
% pcnormal = h5read(file,'/normal');
% pcfaceId = h5read(file,'/faceId');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%
% pc1 = pcdata(:,:,1);
% pcshow(pointCloud(pc1'));
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% gridStep = 4.8;
% ptCloudA = pcdownsample(pointCloud(BRLpc(10).vertices),'gridAverage',gridStep);
% 
% newPC(3).vertices = ptCloudA.Location;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h5create('my_bu3d_train_70_7_4.h5','/data',[3 2048 1960]);
h5create('my_bu3d_train_70_7_4.h5','/label',[1 1960]);
h5_train_data = zeros(3,2048,1960);
h5_train_label = zeros(1,1960);
id_train = 1;
for i = 1:490
%     if mod(i,7)==5 | mod(i,7)==6
        for j = 1:2048
            h5_train_data(:,j,id_train) = mydata(i).VV(j,:)';
        end
        h5_train_label(1,id_train) = mydata(i).label;
        id_train = id_train+1;
%     end
end
for i = 1:490
%     if mod(i,7)==5 | mod(i,7)==6
        for j = 1:2048
            h5_train_data(:,j,id_train) = mydata1(i).VV(j,:)';
        end
        h5_train_label(1,id_train) = mydata1(i).label;
        id_train = id_train+1;
%     end
end
for i = 1:490
%     if mod(i,7)==5 | mod(i,7)==6
        for j = 1:2048
            h5_train_data(:,j,id_train) = mydata2(i).VV(j,:)';
        end
        h5_train_label(1,id_train) = mydata2(i).label;
        id_train = id_train+1;
%     end
end
for i = 1:490
%     if mod(i,7)==5 | mod(i,7)==6
        for j = 1:2048
            h5_train_data(:,j,id_train) = mydata3(i).VV(j,:)';
        end
        h5_train_label(1,id_train) = mydata3(i).label;
        id_train = id_train+1;
%     end
end
h5write('my_bu3d_train_70_7_4.h5','/data',h5_train_data);
h5write('my_bu3d_train_70_7_4.h5','/label',h5_train_label);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h5create('my_bu3d_gallery_30_1_4.h5','/data',[3 2048 120]);
h5create('my_bu3d_gallery_30_1_4.h5','/label',[1 120]);
h5_gallery_data = zeros(3,2048,120);
h5_gallery_label = zeros(1,120);
id_gallery = 1;
for i = 491:700
    if mod(i,7)==5
        for j = 1:2048
            h5_gallery_data(:,j,id_gallery) = mydata(i).VV(j,:)';
        end
        h5_gallery_label(1,id_gallery) = mydata(i).label;
        id_gallery = id_gallery+1;
    end
end
for i = 491:700
    if mod(i,7)==5
        for j = 1:2048
            h5_gallery_data(:,j,id_gallery) = mydata1(i).VV(j,:)';
        end
        h5_gallery_label(1,id_gallery) = mydata1(i).label;
        id_gallery = id_gallery+1;
    end
end
for i = 491:700
    if mod(i,7)==5
        for j = 1:2048
            h5_gallery_data(:,j,id_gallery) = mydata2(i).VV(j,:)';
        end
        h5_gallery_label(1,id_gallery) = mydata2(i).label;
        id_gallery = id_gallery+1;
    end
end
for i = 491:700
    if mod(i,7)==5
        for j = 1:2048
            h5_gallery_data(:,j,id_gallery) = mydata3(i).VV(j,:)';
        end
        h5_gallery_label(1,id_gallery) = mydata3(i).label;
        id_gallery = id_gallery+1;
    end
end
h5write('my_bu3d_gallery_30_1_4.h5','/data',h5_gallery_data);
h5write('my_bu3d_gallery_30_1_4.h5','/label',h5_gallery_label);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h5create('my_bu3d_probe_30_6_4.h5','/data',[3 2048 720]);
h5create('my_bu3d_probe_30_6_4.h5','/label',[1 720]);
h5_probe_data = zeros(3,2048,720);
h5_probe_label = zeros(1,720);
id_probe = 1;
for i = 491:700
    if mod(i,7)~=5
        for j = 1:2048
            h5_probe_data(:,j,id_probe) = mydata(i).VV(j,:)';
        end
        h5_probe_label(1,id_probe) = mydata(i).label;
        id_probe = id_probe+1;
    end
end
for i = 491:700
    if mod(i,7)~=5
        for j = 1:2048
            h5_probe_data(:,j,id_probe) = mydata1(i).VV(j,:)';
        end
        h5_probe_label(1,id_probe) = mydata1(i).label;
        id_probe = id_probe+1;
    end
end
for i = 491:700
    if mod(i,7)~=5
        for j = 1:2048
            h5_probe_data(:,j,id_probe) = mydata2(i).VV(j,:)';
        end
        h5_probe_label(1,id_probe) = mydata2(i).label;
        id_probe = id_probe+1;
    end
end
for i = 491:700
    if mod(i,7)~=5
        for j = 1:2048
            h5_probe_data(:,j,id_probe) = mydata3(i).VV(j,:)';
        end
        h5_probe_label(1,id_probe) = mydata3(i).label;
        id_probe = id_probe+1;
    end
end
h5write('my_bu3d_probe_30_6_4.h5','/data',h5_probe_data);
h5write('my_bu3d_probe_30_6_4.h5','/label',h5_probe_label);
