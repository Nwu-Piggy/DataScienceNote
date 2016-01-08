function [ ZCAData,Mu,Lambda,W ] = ZCA( Data,RowVec )
%Data:ԭʼ�����ݾ���
%RowVec:�������������ʽ����1��������0

if RowVec == 1
    Data = Data';
end

[D,N] = size(Data);

if N<=1
    error('���ݹ����޷�����ZCA')
end

%���Ƚ������Ļ�
Mu = mean(Data,2);
Lambda = var(Data,0,2);

Data = Data-repmat(Mu(:),1,N);
sigma = Data*Data';
[U,S,~] = svd(sigma);
W = U*diag(1./sqrt(diag(S)+1E-5))*U';
ZCAData = W*Data;

if RowVec == 1
    ZCAData = ZCAData';
end

end

