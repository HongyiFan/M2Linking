%Prerequisite: This socket test needs netcat. 
%Netcat is default in Ubuntu. 
%Or one can use "apt-get install netcat" to install it.

%This is a test file to show the ability to link matlab with M2
%Run M2 and server function on a terminal. Then one can control M2 with
%this file
%The M2 command is the string after "<<<" command, within the quote

%%

clear;
clc;

[status, cmdout]= system('nc -N localhost 5000 <<< "R=QQ[x,y];" ');
[stattus2, cmdout2] = system('nc -N localhost 5000 <<< "(x+y)^4;" ');

%By Parsing cmdout and cmdout2 will give us what we want. 


