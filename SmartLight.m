%%Part 1 of Lesson 
a = arduino('COM4','Mega2560');
LED = 'D13';
LDR = 'A0';
Threshold = 5;

LDR_amb = readVoltage(a,LDR);
LDR_covered = readVoltage(a,LDR);
fprintf("The voltage output of the photoresistor in ambient light and when is covered is %.2f and %.2f volts, respectively",LDR_amb,LDR_covered);

%%Part 2 SmartLight
a = arduino('COM4','Mega2560');
LED = 'D13';
LDR = 'A0';
threshold = 0;
LDR_amb = readVoltage(a,LDR);
LDR_covered = readVoltage(a,LDR);
while 1
    if readVoltage(a,LDR)>threshold
        writeDigitalPin(a,LED,1);
    else
        writeDigitalPin(a,LED,0);
    end
end
