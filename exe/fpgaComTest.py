from glob import glob
import torch
import torchvision
import matplotlib.pyplot as plt
import numpy as np
from PIL import Image
import cv2
import struct
import serial
import math

ser = None

def image_processing():#函数功能，将任意形状的png图片转化为20x20的0-1灰度图片并将其边缘扩充，最终生成28x28的tensor矩阵
    #  待处理图片路径
    img_path = Image.open('C:/temp/num.png')
    #  resize图片大小，入口参数为一个tuple，新的图片的大小
    img_size = img_path.resize((20, 20))
    #保存该图片
    img_size.save('C:/temp/num.png', 'PNG')
    #彩色形式打开
    png_img = cv2.imread(r'C:/temp/num.png')
    #  转化为灰度图像，此时仍未255表示形式
    gray_img=cv2.cvtColor(png_img,cv2.COLOR_RGB2GRAY)
    #  将255值转化为1值灰度图片
    gray_img_01=np.zeros_like(gray_img, dtype=float)
    for i in range(0,20):
        for j in range(0,20):
            gray_img_01[i][j]=(255.0-gray_img[i][j])/255.0
            
    #边缘黑色填充为28x28大小的图片
    img=np.zeros((28,28),dtype=float)
    for i in range(0,20):
        for j in range(0,20):
            img[i+4][j+4]=gray_img_01[i][j]
    img=torch.tensor(img,dtype=float)
    f=open("C:/temp/img.txt","w")
    for i in range(0,28):
        for j in range(0,28):
            f.write(str(float(img[i][j]))+'\n')
    f.close()
    return img

def trans_img_to_string(img):
    # print(img)
    msg = []
    for i in range(0,28):
        for j in range(0,28):
            tmp = struct.pack('!f',img[i][j])
            # print(tmp)
            msg.append(tmp)
    return msg

def ser_init():
    global ser
    ser = serial.Serial(port="COM4",baudrate=115200,bytesize=serial.EIGHTBITS,
                        parity=serial.PARITY_NONE,stopbits=serial.STOPBITS_ONE,timeout=5,rtscts=False)
    if ser.isOpen():
        print("port COM4 open succeeded")
    else:
        print("port COM4 open failed")

def ser_final():
    global ser
    print("port COM4 closed")
    ser.close()

def ser_send():
    global ser
    send_len = 0
    img = image_processing()
    msg = trans_img_to_string(img)
    for i in range(784):
        send_len += ser.write(msg[i])
        
    read_msg = ser.read(40)

    f=open("C:/temp/data.txt","w")
    res = []
    for i in range(10):
        res.append((struct.unpack('!f',read_msg[i*4:(i+1)*4]))[0])

    prob = []
    sum=0.0
    for i in range(10):
        sum+=math.exp(res[i])
    for i in range(10):
        prob.append(math.exp(res[i])/sum)

    for num in prob:
        f.write(str(num)+'\n')
    f.close()
