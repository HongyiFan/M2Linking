# M2Linking: Linking Macaulay2 with other softwares

__Introduction__

Macaulay2 is a software system devoted to supporting research in algebraic geometry and commutative algebra. The goal of this repository is to archive a way for linking Macaulay2 with other softwares. 

Here we use Matlab as an example. The method used here is originally listed [here](https://groups.google.com/g/macaulay2/c/IqSEM87M6FE/m/u8rBKBaiBgAJ). 

To use this method, one needs to run 
```
load "socket_server.m2"
```
in a M2 environment. Then one can use `socketMatlabTest.m` to pass the M2 command from Matlab to Macaulay2. 

This method can also be used in other softwares. 

 
