from cv2 import imread as carrega
from cv2 import imwrite as guarda
from cv2 import resize as redimensiona
from cv2 import imshow as mostra
import cv2

A=1
B=25

for el in range(A,B+1):
	if el != 3:
		print ("doing %d"%el) 
		img=carrega("old/f%d.jpg"%el,-1)  # carrega en 4 canals (B,G,R,ALPHA)
		img = redimensiona(img,(2*640,2*480),interpolation=cv2.INTER_NEAREST)#AREA)#
		guarda("f%d.jpg"%(el),img)

