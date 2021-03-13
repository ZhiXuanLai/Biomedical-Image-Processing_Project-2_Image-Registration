%Q1 correlation
clear; clf; clc;
ipfp = fopen( 'mri-a.256', 'r');
ipimg = fread(ipfp, [256,256], 'uchar');
mri_a=ipimg';

ipfp = fopen( 'mri-gauss.256', 'r');
ipimg = fread(ipfp, [256,256], 'uchar');
mri_gauss=ipimg';

ipfp = fopen( 'mri-ps.256', 'r');
ipimg = fread(ipfp, [256,256], 'uchar');

mri_ps=ipimg';
fclose(ipfp);

% mri-a and mri-gauss
correlation_gauss=sum(sum(mri_a.*mri_gauss))

% mri-a and mri-ps
correlation_ps=sum(sum(mri_a.*mri_ps))