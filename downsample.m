for i = 1:700
    %%%%%%%% mydata downsample %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pc_ori = pointCloud(mydata(i).VV);
    pc_downsample = pcdownsample(pc_ori,'gridAverage',0.02);
    pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
    mydata(i).VV = pc_downsample.Location;
    
    %%%%%%%% mydata1 downsample %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pc_ori = pointCloud(mydata1(i).VV);
    pc_downsample = pcdownsample(pc_ori,'gridAverage',0.02);
    pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
    mydata1(i).VV = pc_downsample.Location;
    
    %%%%%%%% mydata2 downsample %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pc_ori = pointCloud(mydata2(i).VV);
    pc_downsample = pcdownsample(pc_ori,'gridAverage',0.02);
    pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
    mydata2(i).VV = pc_downsample.Location;
    
    %%%%%%%% mydata3 downsample %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    pc_ori = pointCloud(mydata3(i).VV);
    pc_downsample = pcdownsample(pc_ori,'gridAverage',0.02);
    pc_downsample = pcdownsample(pc_downsample,'random',2048/size(pc_downsample.Location, 1));
    mydata3(i).VV = pc_downsample.Location;
end
