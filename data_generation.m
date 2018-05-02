% This function is used to generate dataset
 function [class_1,class_2]=data_generation(number,sep)
class_1=[];
class_2=[];
% classify the random data
for i=1:number
    data=rand(1,2)*10-5;% generate random data,ranging from -5 to 5
    if data(1)+data(2)>sep
        class_1=[class_1;data];
    elseif data(1)+data(2)<(-1)*sep;
        class_2=[class_2;data];
    end
end
% ----------delete here when achieving other 2 stages----------
% plot the data
scatter(class_1(:,1),class_1(:,2),'r');
hold on;
scatter(class_2(:,1),class_2(:,2),'g');
hold on;
% -----------------------------------------------------------------
end
    