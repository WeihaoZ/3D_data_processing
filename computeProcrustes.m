% function [Target] = computeProcrustes(sourceInput,targetInput)
%     [~,~,t] = procrustes(sourceInput.feature5,targetInput.feature5);
%     tt = t;
%      tt.c = repmat(tt.c(1,:),length(targetInput.VV),1);
%      Target.VV = tt.b * targetInput.VV * tt.T + tt.c;
%
%       t.c = repmat(t.c(1,:),length(targetInput.feature5),1);
%      Target.feature5 = t.b * targetInput.feature5 * t.T + t.c;
% end

for i = 1:700
    %     mydata(i) = computeProcrustes(mydata(1),mydata(i));
    [~,~,t] = procrustes(mydata(1).feature5,mydata(i).feature5);
    tt = t;
    tt.c = repmat(tt.c(1,:),length(mydata(i).VV),1);
    mydata(i).VV = tt.b * mydata(i).VV * tt.T + tt.c;
    
    t.c = repmat(t.c(1,:),length(mydata(i).feature5),1);
    mydata(i).feature5 = t.b * mydata(i).feature5 * t.T + t.c;
    
    %     mydata1(i) = computeProcrustes(mydata1(1),mydata1(i));
    [~,~,t] = procrustes(mydata1(1).feature5,mydata1(i).feature5);
    tt = t;
    tt.c = repmat(tt.c(1,:),length(mydata1(i).VV),1);
    mydata1(i).VV = tt.b * mydata1(i).VV * tt.T + tt.c;
    
    t.c = repmat(t.c(1,:),length(mydata1(i).feature5),1);
    mydata1(i).feature5 = t.b * mydata1(i).feature5 * t.T + t.c;
    
    %     mydata2(i) = computeProcrustes(mydata2(1),mydata2(i));
    [~,~,t] = procrustes(mydata2(1).feature5,mydata2(i).feature5);
    tt = t;
    tt.c = repmat(tt.c(1,:),length(mydata2(i).VV),1);
    mydata2(i).VV = tt.b * mydata2(i).VV * tt.T + tt.c;
    
    t.c = repmat(t.c(1,:),length(mydata2(i).feature5),1);
    mydata2(i).feature5 = t.b * mydata2(i).feature5 * t.T + t.c;
    
    %     mydata3(i) = computeProcrustes(mydata3(1),mydata3(i));
    [~,~,t] = procrustes(mydata3(1).feature5,mydata3(i).feature5);
    tt = t;
    tt.c = repmat(tt.c(1,:),length(mydata3(i).VV),1);
    mydata3(i).VV = tt.b * mydata3(i).VV * tt.T + tt.c;
    
    t.c = repmat(t.c(1,:),length(mydata3(i).feature5),1);
    mydata3(i).feature5 = t.b * mydata3(i).feature5 * t.T + t.c;
end
