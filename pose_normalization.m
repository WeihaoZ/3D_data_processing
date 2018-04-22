function pointCloud = pose_normalization(pointCloud)
iCount = 1;
U = zeros(3,3);
while abs(U(1,1)) ~= 1 || abs(U(2,2)) ~= 1 || abs(U(3,3)) ~= 1%iCount<101
    mp = (mean(pointCloud'))';
    C = cov(pointCloud');
%     C = zeros(3,3);
%     for i = 1:length(pointCloud)
%         C = C + pointCloud(:,i)*pointCloud(:,i)';
%     end
%     C = C/(length(pointCloud)) - mp*mp';
    [V, D] = eig(C);    %V的每一列是特征向量.    D是特征值构成的对角矩阵.
    %排序
    U = [V(:,3),V(:,2),V(:,1)];
    %norm(U)
	mp = repmat(mp, 1, length(pointCloud));
    pointCloud = U' * (pointCloud - mp);
    iCount = iCount + 1;
end
