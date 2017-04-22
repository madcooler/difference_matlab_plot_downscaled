function plotMag_downscaled(filepath)


% path='./two_die_gold_r31';
% path='./two_die_al_r15';
% path='./two_die_copper_r53';

% path='./three_die_die_copper';
% path='./three_die_die_die_r234';
% 
% path='./two_die_gold_r31';
% 
% path='./three_die_die_gold.......';
%  path='./three_1.3_1.5_gold';
% path='./two_die_copper_r53';
% 
% path='./two_die_al_r14';
% path='./two_die_al_r14';
% path='./two_die_gold_r14';
% 
% path='./one_gold_r0.25';
% 
%  path='./one_die_r0.25';

% path='./two_die_silver';
% path='./two_die_die_r11';
%  path='./three_die_die_die_r111';

path='./two_die15_die24_r11';

%  p10 = [path,'/ia10'];
%  p40 = [path,'/ia40'];
%  p60 = [path,'/ia60'];
%  p80 = [path,'/ia80'];

p10 = [path,'/ia50'];
p40 = [path,'/ia56'];
p60 = [path,'/ia60'];
p80 = [path,'/ia65'];

%  folder10 = 'ia10';
%  folder40 = 'ia40';
%  folder60 = 'ia60';
%  folder80 = 'ia80';

folder10 = 'ia50';
folder40 = 'ia56';
folder60 = 'ia60';
folder80 = 'ia65';

% al
% plot_diff_mag(path,p10,folder10,0.005,0.01,1);
%  plot_diff_mag(path,p40,folder40,0.005,0.01,1);
%  plot_diff_mag(path,p60,folder60,0.005,0.01,1);
%  plot_diff_mag(path,p80,folder80,0.15,0.15,2);

thres=0.21;
image_thre = 10;
% path='./two_die_die_r17';
 plot_diff_mag(path,p10,folder10,thres,0.2,image_thre,'dielectric');
 plot_diff_mag(path,p40,folder40,thres,0.2,image_thre,'dielectric');
 plot_diff_mag(path,p60,folder60,thres,0.2,image_thre,'dielectric');
 plot_diff_mag(path,p80,folder80,thres,0.2,image_thre,'dielectric');
 
 %path='./two_die_copper_r53';
% plot_diff_mag(path,p10,folder10,0.1,0.1,20);
%  plot_diff_mag(path,p40,folder40,0.1,0.1,20);
%  plot_diff_mag(path,p60,folder60,0.1,0.15,20);
%  plot_diff_mag(path,p80,folder80,0.1,0.15,20);
% path='./three_die_die_copper';
%  plot_diff_mag(path,p10,folder10,0.01,0.02,2);
%  plot_diff_mag(path,p40,folder40,0.02,0.03,2);
% plot_diff_mag(path,p60,folder60,0.03,0.025,2);
%  plot_diff_mag(path,p80,folder80,0.03,0.03,2);

% path='./two_die_gold_r31';
%path='./two_die_copper_r53';
%path='./two_die_gold_r11'
% path='./two_die_gold_r14';
%  plot_diff_mag(path,p10,folder10,0.05,0.05,15,'metal');
%  plot_diff_mag(path,p40,folder40,0.08,0.09,8,'metal');
%  plot_diff_mag(path,p60,folder60,0.08,0.10,2,'metal');
%  plot_diff_mag(path,p80,folder80,0.13,0.15,2,'metal');
% 

%path='./one_gold_r0.25';
% plot_diff_mag(path,p10,folder10,0.01,0.01,1,'metal');
% plot_diff_mag(path,p40,folder40,0.01,0.02,1,'metal');
% plot_diff_mag(path,p60,folder60,0.03,0.04,1,'metal');
% plot_diff_mag(path,p80,folder80,0.03,0.05,1,'metal');

% path='./three_die_die_die_r234';
%  plot_diff_mag(path,p10,folder10,0.005,0.005,1);
%  plot_diff_mag(path,p40,folder40,0.03,0.04,1);
%  plot_diff_mag(path,p60,folder60,0.04,0.05,1);
%  plot_diff_mag(path,p80,folder80,0.02,0.03,1);

end