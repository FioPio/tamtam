# -*- coding: utf-8 -*-
from subprocess import call
from pyzbar.pyzbar import decode
import numpy as np
import cv2

####################PARAMETRES CONSTANTS
#mtx=[[2.32980194e+03, 0.0           , 1.33152117e+03],
#     [0.0           , 2.36370143e+03, 9.49841341e+02],
#     [0.0           , 0.0           , 1.0           ]]
mtx = np.array(((2.32980194e+03, 0., 1.33152117e+03),
                (0., 2.36370143e+03, 9.49841341e+02),
                (0., 0., 1.)), dtype=np.float32)

#dist=[[-0.06302511,  0.02747321, -0.00656921, -0.0064299,  -0.03171313]]
dist = np.array([-0.06302511,  0.02747321, -0.00656921, -0.0064299,  -0.03171313])

#fa foto i la carrega
#call(["raspistill", "-o", "img.jpg"])
img=cv2.imread('img.jpg')
h,  w = img.shape[:2]
center = (w / 2, h / 2)
M = cv2.getRotationMatrix2D(center, 180,1.0)
img = cv2.warpAffine(img, M, (w,h)) 
cv2.imwrite("img_rev.png",img)
newcameramtx, roi=cv2.getOptimalNewCameraMatrix(mtx,dist,(w,h),1,(w,h))
img_undis=cv2.undistort(img, mtx, dist, None, newcameramtx)
grey = cv2.cvtColor(img_undis, cv2.COLOR_BGR2GRAY)

descod=decode(grey)

print(descod)
##############Per retallar
#x,y,w,h = roi
#dst = dst[y:y+h, x:x+w]

