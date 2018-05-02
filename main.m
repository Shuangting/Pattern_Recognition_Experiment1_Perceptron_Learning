% This is the main function
clc;
%----------this part is for stage 1------------
number=200;
A=[];
sep=1;
rate=0.5;
[class_1,class_2]=data_generation(number,sep);
[iter]=perception(rate,class_1,class_2);
% -------------------------------------------

%----------this part is for stage 2------------
% number=200;
% rate=0.5
% A=[];
%  for sep=0.5:0.5:3
%          iter_sum=0;
%          for i=1:1000
%              [class_1,class_2]=data_generation(number,sep);
%              [iter]=perception(rate,class_1,class_2);
%              iter_sum=iter_sum+iter;
%          end
%          iter_aver=iter_sum/1000;
%          A=[A iter_aver];
%          fprintf('separation factor is:%2f\n,the number of iterations is:%2f\n',sep,iter_aver);
%  end
% -------------------------------------------

%----------this part is for stage 3------------
% number=200;
% A=[];
%  for sep=0.5:0.5:3
%      for rate=0.1:0.1:1
%          iter_sum=0;
%          for i=1:1000
%              [class_1,class_2]=data_generation(number,sep);
%              [iter]=perception(rate,class_1,class_2);
%              iter_sum=iter_sum+iter;
%          end
%          iter_aver=iter_sum/1000;
%          A=[A iter_aver];
%          fprintf('separation factor is:%2f\n,learing rate is:%2f\n,the number of iterations is:%2f\n',sep,rate,iter_aver);
%      end
%  end
% -------------------------------------------

