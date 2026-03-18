clc;
clear all;
close all;

w1=2*pi;
tf = 3;
delta = 0.001;
t = 0:delta:tf-delta;
x = sin(w1*t);

T = 0.1;
Delta = T / delta;
xe = x(1:Delta:end);

figure;
subplot(2,1,1);
plot(t,x,'k');
hold on;
stairs([0:length(xe)-1] * T, xe,'r');
stem([0:length(xe)-1] * T, xe,'b');
hold off;

xlabel('Tempo(s)');
ylabel('Amplitude');
title('Sinal Continuo amostrado');
legend('Sinal Contínuo','Interpolado','Amostrado');

subplot(2,1,2);
plot([0:length(xe)-1],xe,'k*');
xlabel('Indice n');
ylabel('Amplitude');
title('Sinal discreto');
legend('x(n)');
