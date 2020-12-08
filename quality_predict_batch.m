function ma_scores = quality_predict_batch(matcachepath)

load model.mat
load(matcachepath);
n = size(imgs,1);
ma_scores = [n];

for i = 1:n
    img = imgs(i,:,:,:);
    img = squeeze(img);
    ma_scores(i) = quality_predict(img, model);
end

