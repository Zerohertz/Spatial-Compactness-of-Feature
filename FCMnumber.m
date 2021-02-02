% Feature combination matrix
% [YY7,YY8]=FCMnumber(data1,data2)
% Made by Jongsu Lee

function [YY7,YY8]=FCMnumber(data1,data2)

xaxisx=data1;
yaxisy=data2;
Y=[];
YY1=[];
YY2=[];
XX(:,1)= (xaxisx-mean(xaxisx))./std(xaxisx);
XX(:,2)= (yaxisy-mean(yaxisy))./std(yaxisy);
% Calculation of angle at the position of point
XX(:,3)=XX(:,2).*1i;
XXX(:,1)=XX(:,1)+XX(:,3);
a=0;
j=1;

% Classify the data X according to the angle of each datum
for a=0:7200
    for j=1:length(XX(:,1)) %% 100 = the number of data
        ZZZZ(j,1)=round(angle(XXX(j,1))*360/(2*pi),1);
        ZZZZZZ((a+1),1)=round((a/10-360),1);
        if (round((a/10-360),1) <= round(angle(XXX(j,1))*360/(2*pi),1) && round(((a+1)/10-360),1) > round(angle(XXX(j,1))*360/(2*pi),1))
            YY1(j,(a+1))=XX(j,1);
            YY2(j,(a+1))=XX(j,2);
        else
            YY1(j,(a+1))=0;
            YY2(j,(a+1))=0;
        end
    end
end
% Check the summarized data (The number of the summarized data is the same
% with the number of data?

a=1;
k=0;
j=0;
% just check
for a=1:length(YY1(1,:))
    for j=1:length(YY1(:,1))
        if YY2(j,a)~=0
            k=k+1;
        end
    end
end

j=1;
k=0;
for j=1:length(YY1(:,1))
    if YY2(j,1)~=0
        k=k+1;
    end
end
% just check
% Obtain the distance of each datum
a=1;
j=1;
for a=1:length(YY1(1,:))
    for j=1:length(YY1(:,1))
        YYY(j,a)=sqrt((YY1(j,a).^2+YY2(j,a).^2));
    end
end


% Extract the outer points (angle -360~360 degree, YY5 (x axis), YY6 (y axis))
YY5=zeros(1,length(YY1(1,:)));
YY6=zeros(1,length(YY2(1,:)));
a=1;
j=1;
YYYY=zeros(1,length(YY1(1,:)));
for a=1:length(YY1(1,:))
    for j=1:length(YY1(:,1))
        if abs(YYYY(1,a)) < abs(YYY(j,a))
            YYYY(1,a) = YYY(j,a);
            YY5(1,a) = YY1(j,a);
            YY6(1,a) = YY2(j,a);
        else if abs(YYYY(1,a)) > abs(YYY(j,a))
                YYYY(1,a) = YYYY(1,a);
            else if abs(YYYY(1,a)) == abs(YYY(j,a))
                    YYYY(1,a) = YYYY(1,a);
                    %YY5(1,a) = YY1(j,a);
                    %YY6(1,a) = YY2(j,a);
                end
            end
        end
    end
end

% Extract the edge of the data (angle -360~360 degree, YY7 (x axis), YY8 (y axis))
a=1;
m=0;
for a=1:length(YY5(1,:))
    if YY5(1,a) ~= 0||YY6(1,a) ~= 0
        m=m+1;
        YY7(1,m) = YY5(1,a);
        YY8(1,m) = YY6(1,a);
    end
end

for a=1:length(YY7(1,:))
    AAAA(1,a)=angle(YY7(1,a)+YY8(1,a)*1i);
end