% clear all;
% load('frgc_data.mat');
for i = 1:700
    %BU_3DFE_cut = BU_3DFE(i).VV(find(BU_3DFE(i).VV(:,3) > -40) , :);
    mydata(i).name = BU_3DFE(i).name;
    mydata(i).feature5 = BU_3DFE(i).feature5;
    pc_ori = pointCloud(BU_3DFE(i).VV);
    nosetip_coord = BU_3DFE(i).feature5(7,:);
    nose_bottom_coord = BU_3DFE(i).feature5(8,:);
    
    nosetip_idx = knnsearch(pc_ori.Location,mydata(i).feature5);
    nose_bottom_idx = knnsearch(pc_ori.Location,nose_bottom_coord);
    feature5_idx = knnsearch(pc_ori.Location,mydata(i).feature5);
    % pc_denoise = pcdenoise(pc_ori,'NumNeighbors',8,'Threshold',1);
    
    % coord_3d_denoise = medfilt3(pc_denoise.Location');
    
    % curv_filter = curvature_filter(pc_ori.Location);
    
%     coord_3d_denoise = median_filter(pc_ori.Location,8);
%     nosetip_idx = knnsearch(coord_3d_denoise,nosetip_coord);
    
    

    % pc_pn = pointCloud(coord_3d_pn');
    % figure,pcshow(pc_pn);
    % coord_3d_sr = spike_removal(coord_3d_pn');
    
%     nose_tip = nosetip_detection(coord_3d_pn);
%     if nose_tip(3,1) < 0
%         nose_tip(3,1) = -nose_tip(3,1);
%         coord_3d_pn(3,:) = -coord_3d_pn(3,:);
%     end
    
    coord_3d_crop = face_cropping(pc_ori.Location,nosetip_coord,90);
    nosetip_idx = knnsearch(coord_3d_crop,nosetip_coord);
    nose_bottom_idx = knnsearch(coord_3d_crop,nose_bottom_coord);
    feature5_idx = knnsearch(coord_3d_crop,mydata(i).feature5);
    
    % coord_3d_interp = hole_filling(coord_3d_crop');
    
    coord_3d_pn = pose_normalization(coord_3d_crop');
    coord_3d_pn = coord_3d_pn';
    nosetip_coord = coord_3d_pn(nosetip_idx,:);
    nose_bottom_coord = coord_3d_pn(nose_bottom_idx,:);
    mydata(i).feature5 = coord_3d_pn(feature5_idx,:);
    %re_norm = pose_normalization(coord_3d_crop');
    %re_nose_tip = nosetip_detection(re_norm);
    coord_3d_pn(:,[1,2]) = coord_3d_pn(:,[2,1]);
    nosetip_coord(:,[1,2]) = nosetip_coord(:,[2,1]);
    nose_bottom_coord(:,[1,2]) = nose_bottom_coord(:,[2,1]);
    mydata(i).feature5(:,[1,2]) = mydata(i).feature5(:,[2,1]);
    if nosetip_coord(3) < 0
        nosetip_coord(3) = -nosetip_coord(3);
        nose_bottom_coord(3) = -nose_bottom_coord(3);
        coord_3d_pn(:,3) = -coord_3d_pn(:,3);
    end
    if nose_bottom_coord(2) >= nosetip_coord(2)
        nosetip_coord(2) = -nosetip_coord(2);
        nose_bottom_coord(2) = -nose_bottom_coord(2);
        coord_3d_pn(:,2) = -coord_3d_pn(:,2);
    end
    
    pc_out = pointCloud(coord_3d_pn);
%     pc_downsample = pcdownsample(pc_out,'gridAverage',3.1);
%     pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
    
%     figure, pcshow(pc_out);
%     xlabel('x-axis');
%     ylabel('y-axis');
%     zlabel('z-axis');
%     hold on;scatter3(nosetip_coord(1),nosetip_coord(2),nosetip_coord(3));
    
    mydata(i).VV = pc_out.Location;
    mydata(i).label = floor((i-1)/7);
%    mydata(i).VV(:,:) = mydata(i).VV(:,:)/100;
end
