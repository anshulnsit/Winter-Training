w = 100;
N = 100000
y1 = zeros(1,N+1);
y2 = zeros(1,N+1);
y3 = zeros(1,N+1);
x1 = zeros(1,N+1);
x2 = zeros(1,N+1);
x3 = zeros(1,N+1);
w0 = 2*pi*10000;
for w = 1:1:N+1
    x1(w) = w;
    x2(w) = w;
    x3(w) = w;
    s = j*w;
    c1 = 10^5;
    y1(w) = mag2db(c1^2/(c1^2 + w^(2*1.4)));
    c2 = 10^5;
    y2(w) = mag2db(c2^2/(c2^2 + w^(2*2.1)));
    c3 = 10^5;
    y3(w) = mag2db(c3^2/(c3^2 + w^(2*2)));
end
semilogx(x1,y1,'b',x2,y2,'r',x3,y3,'g');
title('Fractional Order Butterworth Filter Frequency Response');
xlabel('Frequency (Hz)');
ylabel('Gain (dB)');
legend('\alpha = \beta = 0.7','\alpha = 0.8 & \beta = 1.3','\alpha = \beta = 1'); 