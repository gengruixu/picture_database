file_path =  'E:\code\pictureForMarkdown\Nature25489\';% ???????
img_path_list = dir(strcat(file_path,'*.png'));%?????????jpg?????
img_num = length(img_path_list);%???????
if img_num > 0 %????????
        for j = 1:img_num %??????
            image_name = img_path_list(j).name;% ???
            image =  imread(strcat(file_path,image_name));
            fprintf('%d %d %s\n',i,j,strcat(file_path,image_name));% ??????????
            %image = imresize(image,[900,1952]);
            imwrite(image,image_name,'jpg');%?????????
            %?????? ??
        end
end