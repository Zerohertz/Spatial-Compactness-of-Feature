function LearningData=MakeLearningData(Norm,Wear)
    for i=1:height(Norm)
        Target1(i)={'Normal'};
        Target2(i)={'Wear'};
    end
    
    Target=[Target1,Target2];
    Target=Target';
    Skew_X=[Norm.X_skew;Wear.X_skew];
    Skew_Y=[Norm.Y_skew;Wear.Y_skew];
    Skew_Z=[Norm.Z_skew;Wear.Z_skew];
    Kurt_X=[Norm.X_kurt;Wear.X_kurt];
    Kurt_Y=[Norm.Y_kurt;Wear.Y_kurt];
    Kurt_Z=[Norm.Z_kurt;Wear.Z_kurt];
    RMS_X=[Norm.X_rms;Wear.X_rms];
    RMS_Y=[Norm.Y_rms;Wear.Y_rms];
    RMS_Z=[Norm.Z_rms;Wear.Z_rms];
    p2p_X=[Norm.X_p2p;Wear.X_p2p];
    p2p_Y=[Norm.Y_p2p;Wear.Y_p2p];
    p2p_Z=[Norm.Z_p2p;Wear.Z_p2p];
    iq_X=[Norm.X_iq;Wear.X_iq];
    iq_Y=[Norm.Y_iq;Wear.Y_iq];
    iq_Z=[Norm.Z_iq;Wear.Z_iq];
    CF_X=[Norm.X_cf;Wear.X_cf];
    CF_Y=[Norm.Y_cf;Wear.Y_cf];
    CF_Z=[Norm.Z_cf;Wear.Z_cf];
    LearningData=table(Skew_X,Skew_Y,Skew_Z,RMS_X,RMS_Y,RMS_Z,Kurt_X,Kurt_Y,Kurt_Z, p2p_X,p2p_Y,p2p_Z,iq_X,iq_Y,iq_Z,CF_X,CF_Y,CF_Z,Target);
end