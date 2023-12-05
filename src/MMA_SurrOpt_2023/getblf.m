function [blf] = getblf(x0)
pkg load image
nelx = 240;
nely = 120;
penalK = 3;
rmin = 4;
ft = 2;
ftBC = 'N';
eta = 0.5;
beta = 2;
ocPar = [0.1,0.7,1.2];
maxit = 1;
Lx = 2;
penalG = 3;
nEig = 6;
pAgg = 200;
prSel = {['B','C','V'],[2.5,0.25]};
% x0 = 'x0.mat';
% x0 = 'x0.csv'; 
betaCnt = {400,24,25,2};
asyincr_inp = 1.1;
asydecr_inp = 0.7;

[blf,xpOut_reshape] = topBuck250_Column_MMA_BLF_calc(nelx,nely,penalK,rmin,ft,ftBC,eta,beta,ocPar,maxit,Lx,penalG,nEig,pAgg,prSel,x0,betaCnt,asyincr_inp,asydecr_inp);
% save(strcat("blf",x0,".mat"), "blf", "-v6");
% save(strcat("xpOut",x0,".mat"), "xpOut_reshape", "-v6");

% csvwrite(strcat("xpOut_reshape.csv"),xpOut_reshape)
% csvwrite(strcat("blfOut", x0, ".csv"),blf )
end