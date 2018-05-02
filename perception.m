%  This function is used for perception learning
function [iter] = perception(rate,class_1,class_2)
%randomize the data's order
dataset_rand=[];
c1_length=length(class_1(:,1));
c2_length=length(class_2(:,1));
class1=[class_1 ones(c1_length,1)];
class2=[class_2 ones(c2_length,1)];
m=[class1;(-1)*class2];
m_length=length(m(:,1));
list=randperm(m_length);
for i=1:m_length
    x(i,:)=m(list(i),:);
end
% initialization
w=[];
w(1,:)=[0 0 0];
count=1; % represent the amount of times that the value of w doesn't change during the iterations
iter=0; % represent the number of iterations
f_exit=0; % the flag to decide the exit condition
% find the appropriate w
while(f_exit==0)
    for t=1:m_length
        result=x(t,:)*(w(t,:))';
        if result>0
            w(t+1,:)=w(t,:);
            count=count+1;
        elseif result<=0
            w(t+1,:)=w(t,:)+rate*x(t,:);
            count=0;
            iter=iter+1;
        end
    end
    w(1,:)=w(m_length+1,:);
    if (count>=m_length)
        f_exit=1;
    else
        f_exit=0;
    end
%     decide whether the dataset is linearly separable
    if(iter>1500)
        fprintf('The dataset linearly unseparable.');
        break;
    end
    A(1)=w(t+1,1);
    A(2)=w(t+1,2);
    A(3)=w(t+1,3);
end
 
% plot the result
xp=-5:5;
yp=-A(3)/A(2)-A(1)*xp/A(2);
plot(xp,yp);
 end
