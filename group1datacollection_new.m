% You will have to speak your roll in bangla
% like ak, dui, tin, .. ,  agaro,baro, ......
%you will have to input your id first
clc;
clear;

id=input('Enter your student ID(7 digit)==> ','s');
maindir=['D:\data_collection\' id];
mkdir(maindir);

fs=44100;

recobj=audiorecorder(fs,16,1);

p=1;
ch='a';
while ch~='b'
    clc;

    disp('Press enter to start recording');
    pause;
    disp('Recording time is 3 sec');
    pause(1);
    disp('Speak Now!!!');
    
    recordblocking(recobj,3);
    y=getaudiodata(recobj);
    f=[id '_' num2str(p) '.wav'];
    DIR=[maindir '\' f];
    audiowrite(DIR,y,fs);
    
    
    fprintf("you have recorded %f times \n",p);
    
    
    ch=input('if you want to recored more, press m or press b to quit','s');
    p=p+1;
end


