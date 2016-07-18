% Pero 3.6.2016
%
% Script to read measuremnt data for 1 GHz detection filter
%
%
clear all
close all
clc


S11 = csvread("S11 LARGE.csv");
S21 = csvread("S21 LARGE.csv");

figure;
hold on;
plot(S11(:,1)*1e-9, S11(:,2), 'linewidth', 1);
plot(S21(:,1)*1e-9, S21(:,2), 'g', 'linewidth', 1);
grid;
xlim([0.4, 2]);
ylim([-30, 10]);
legend(['S\_{11}'; 'S\_{21}']);
xlabel("Frequency, GHz",'fontsize', 14);
ylabel("dB", 'fontsize', 14)