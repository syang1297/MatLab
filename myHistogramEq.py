#import cv2
import numpy as np
img1=imread("IMG_0798.tiff",0)
img2=imread("IMG_8787.tiff",0)

def myHistogramEq(I):
    arr=0*[256];
    for i in range(I.shape[0]):
        for j in range(I.shape[1]):
            pmf[I[x,y]]+=1
            cdf=[0]*len(arr)
            cdf[0]=pmf[0]
            for k in range(1,len(pmf)):
                cdf[k]=cdf[k-1]+pmf[k]
                cdf=[num*255/cdf[-1] for num in cdf]
                histogram=np.interp(I,range(0,256),cdf)
                return histogram

imwrite('IMG_0798.tiff Original', img1)
imwrite('IMG_0798.tiff Histogram', myHistogramEq(img1))
imwrite('IMG_8787.tiff Original', img2)
imwrite('IMG_8787.tiff Histogram', myHistogramEq(img2))

