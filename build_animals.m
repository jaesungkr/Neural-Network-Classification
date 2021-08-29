


location = 'C:\Users\Jaesung Park\Documents\MATLAB\image\animals';
ds = imageDatastore(location);
size = length(ds); 
X = zeros(40000,3000);
y = zeros(3,3000);

for k = 3 : 3000
    
    img = read(ds);
    img = (img - mean2(img))./std2(img);
    grayImg = rgb2gray(img);
    Iblur = imgaussfilt(grayImg,2);
    sizeFixed = imresize(Iblur, [200,200]);
    B = reshape(sizeFixed,1,40000);
    X(:,(k-2)) = B;
    
    fstruct = fullfile(location);
    name = dir(fstruct);
    if isempty(strfind(name(k).name,'cats')) == 0
       y(:,(k-2)) = [1,0,0];
    end
    if isempty(strfind(name(k).name,'dogs')) == 0
            y(:,(k-2)) = [0,1,0];
    end
    if isempty(strfind(name(k).name,'panda')) == 0
            y(:,(k-2)) = [0,0,1];
    end
        
end
save('data.mat','X','y');

