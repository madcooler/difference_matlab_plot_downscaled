function plot_diff_mag(path,filepath,folder, x1, x2,thre_number,dielectric)

load('cmap');


file = [filepath,'/diff_mag.txt'];

file_adm_jpg = [path,'/',folder,'_ADM.png'];
file_adm_fig = [path,'/',folder,'_ADM.fig'];
file_mdm_jpg = [path,'/',folder,'_MDM.png'];
file_mdm_fig = [path,'/',folder,'_MDM.fig'];
% 
% if(folder=='ia80')
%     file_img = [filepath,'/mp_ia80.tiff'];
% end
% if(folder=='ia60')
%     file_img = [filepath,'/mp_ia60.tiff'];
% end
% if(folder=='ia40')
%     file_img = [filepath,'/mp_ia40.tiff'];
% end
% if(folder=='ia10')
%     file_img = [filepath,'/mp_ia10.tiff'];
% end

% img = imread(file_img);
% 
% img=im2double(img);
% img_importance=zeros(512,512);
% img_importance = img(:,:,2)+img(:,:,1)+img(:,:,3);
% 
% img_importance = img_importance*255/3;

load(file);
x = diff_mag(:,2);
y = diff_mag(:,1);
v3 = diff_mag(:,3);
v4 = diff_mag(:,4);

ti_p = diff_mag(:,5);
ti   = diff_mag(:,6);

diff=abs(ti_p-ti)./ti;

size = 1;
for size = 1:length(x);
    if(x(size)~= x(size+1))
        break;
    end
end

st = length(x)/size;

length1 = size;
length2 = st;

I=find(ti_p(:));


intensity_thre = sum(ti_p);
intensity_thre = intensity_thre/(length(I)*thre_number);
ti_p = reshape(ti_p,length1,length2);


xpos = reshape(x,length1,length2);
ypos = reshape(y,length1,length2);

if(strcmp(dielectric,'dielectric'))
    mm=reshape(diff,length1,length2);
else
    mm=reshape(v3,length1,length2);
end

threshold1 = x1;
threshold2 = x2;

total_mag = 0;
pixel_num = 0;

m=mm;

for i= 1:length1
    for j = 1 : length2
        index_x = xpos(i,j);
        index_y = ypos(i,j);
        
        if mm(i,j)>threshold1
            m(i,j) = threshold1;
        else
            m(i,j) = mm(i,j);
        end
        
         if(ti_p(i,j)<intensity_thre)
            m(i,j)=0;
         else
             pixel_num = pixel_num + 1;
         end
        
%         if(img_importance(index_x,index_y)<1)
%             m(i,j)=0;
%         end
    end
end

figure1=figure;
axes1 = axes('Parent',figure1);
surf(m)
view(90,90);
xlim([0 128])
ylim([0 128]) 
set (gcf,'Position',[500,500,1050,1000], 'color','w');
set (gcf,'color','white','paperpositionmode','auto');

% cmap = colormap(gca);

c=colorbar('peer',axes1,'Position',...
    [0.0479742851087544 0.154373744450571 0.067643979057592 0.732105263157895],...
    'AxisLocation','in',...
    'FontSize',50,...
    'Color',[1 0 0]);

caxis([0.0 0.21]);
colormap(cmap);

tick = get(c,'ytick');
tick = tick * 100;
% ticklength = length(tick);
% for t = 1: ticklength
%     str{t}=[num2str(tick(t)),'%']
% end
% set(c,'TickLabels',str);

% ticklength = length(tick);
% for t = 1: ticklength
%     str{t}=num2str(tick(t))
% end

set(c,'TickLabels',sprintf('%.1f %%\n',tick));
set(c,'color','g');
%gtext('\times 10^{-1}')
% 
% h=colorbar('AxisLocation','in')
% set(h,'Fontsize',40); 
axis off;
grid off;
snam='new_no_blank'; % note: NO extension...
s=hgexport('readstyle',snam);
s.Format = 'png'; %define your png format
hgexport(gcf,file_adm_jpg,s);
% saveas(gcf,file_adm_jpg);
% saveas(gcf,file_adm_fig);
%clear

if(strcmp(dielectric,'dielectric'))
    return;
end

mm=reshape(v4,length1,length2);


for i= 1:length1
    for j = 1 : length2
        index_x = xpos(i,j);
        index_y = ypos(i,j);
        
        if mm(i,j)>threshold2
            m(i,j) = threshold2;
        else
            m(i,j) = mm(i,j);
        end
         if(ti_p(i,j)<intensity_thre)
            m(i,j)=0;
        end
%         if(img_importance(index_x,index_y)<5)
%             %m(i,j)
%             m(i,j)=0;
%             %img_importance(index_x,index_y)
%         end
    end
end

figure1=figure;
axes1 = axes('Parent',figure1);
surf(m)
view(90,90);
xlim([0 128])
ylim([0 128])
set (gcf,'Position',[500,500,1050,1000], 'color','w');
set (gcf,'color','white','paperpositionmode','auto');


% c=colorbar('peer',axes1,'Position',...
%     [0.14466275659824 0.128552875695733 0.0620821114369501 0.777894248608535],...
%     'AxisLocation','in',...
%     'FontSize',50,...
%     'Color',[1 0 0]);

c2=colorbar('peer',axes1,'Position',...
    [0.0479742851087544 0.154373744450571 0.067643979057592 0.732105263157895],...
    'AxisLocation','in',...
    'FontSize',50,...
    'Color',[1 0 0]);

caxis([0.0 0.21]);
 colormap(cmap);

tick2 = get(c2,'ytick');
tick2 = tick2 * 100;

set(c2,'TickLabels',sprintf('%.1f %%\n',tick2));
set(c2,'color','g');
% 
% h=colorbar('AxisLocation','in')
% set(h,'Fontsize',40); 
axis off;
grid off;
snam='new_no_blank'; % note: NO extension...
s=hgexport('readstyle',snam);
s.Format = 'png'; %define your png format
hgexport(gcf,file_mdm_jpg,s);
% saveas(gcf,file_mdm_jpg);
% saveas(gcf,file_mdm_fig);

end