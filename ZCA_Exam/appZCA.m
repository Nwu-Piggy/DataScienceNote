function [ ZCAData ] = appZCA( Data,RowVec,Mu,Lambda,W )
%Data:ԭʼ�����ݾ���
%RowVec:�������������ʽ����1��������0
if RowVec == 1
    Data = Data';
end
[~,N] = size(Data);
%���Ƚ������Ļ�
Data = Data-repmat(Mu(:),1,N);
%�ٽ��а׻�
ZCAData = W*Data;
if RowVec == 1
    ZCAData = ZCAData';
end
end