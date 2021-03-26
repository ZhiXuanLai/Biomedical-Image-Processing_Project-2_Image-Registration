%Q2 Image Registration and Correlation Calculation
figure(1);
translate= imtranslate(mri_a, [-45,-45]);
% translate image by left=45, up=45
subplot(2,2,1);
image(translate);
colormap(gray(256));
axis('image') ;
title('translate by (-45, 45)');
correlation_1=sum(sum(mri_a.*translate))

translate_1= imtranslate(mri_a, [-30,-30]);
subplot(2,2,2);
image(translate_1);
colormap(gray(256));
axis('image') ;
title('translate by (-30, 30)');

correlation_2=sum(sum(mri_a.*translate_1))

translate_2= imtranslate(mri_a, [-15,-15]);
subplot(2,2,3);
image(translate_2);
colormap(gray(256));
axis('image') ;
title('translate by (-15, 15)');
correlation_3=sum(sum(mri_a.*translate_2))

subplot(2,2,4);
image(mri_a);
colormap(gray(256));
axis('image') ;
title('original site');
correlation_4=sum(sum(mri_a.*mri_a)
