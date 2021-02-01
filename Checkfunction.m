function result=Checkfunction(data,func,filename)
    for k=1:height(data);
        if k>height(data)/2
            z={'Wear'};
        else k<=height(data)/2
            z={'Normal'};
        end
        p=func.predictFcn(data(k,:));
        Predict(k)=p;
        Result(k)=z;
    end
    
    Predict=Predict';
    Result=Result';
    
    result=table(Predict,Result);
    
    cd C:\Users\ohg34\Downloads
    writetable(result,filename,'Delimiter',',')
    cd C:\Users\ohg34\OneDrive\¹®¼­\MATLAB\ML
end