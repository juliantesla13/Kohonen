clc
clear all
close all

% X1 = random('uniform',-0.1,0.1,[1 10]);
% X2 = random('uniform',-0.9,1.1,[1 10]);
% X3 = random('uniform',0.4,0.5,[1 10]);
% X4 = random('uniform',-0.9,1.1,[1 10]);
% X = [[X1; X2] [X3; X4]];

Y = [0:0.05:1]*pi/2;
X = [sin(Y); cos(Y)];

W = crearC([0 1; 0 1],5);
figure
plot(X(1,:),X(2,:),'+b',W(1,:),W(2,:),'or');
%W = entrenarCve(W,X,0.5,0.01,1,0.5,500);
W = entrenarCvr(W,X,0.5,0.01,1+00);
figure
plot(X(1,:),X(2,:),'+b',W(1,:),W(2,:),'or');
%pause(0.1);

