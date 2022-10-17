# inference分为绘画、图像处理和推理三个阶段
1.**绘画**:主要在qt平台进行，输出文件num.png

2.**图像处理**:基于python进行图像的灰度化，裁剪等操作，保证inference阶段的图像尽可能规范，接近数据集。

3.**推理**:c语言编写，主要涉及的函数有:printf fopen fscanf fprintf等(引入文件系统主要是要进行不同进程间的通信，就是说该c程序必须使用python程序的输出作为输入)
涉及主要运算：单精度浮点数加法、单精度浮点数乘法、比较运算符、整型加减乘除


**目前的主要问题**:该过程经过测试，准确率基本能够保证(只要写的风格偏向西方写法，几乎都能识别)。现在担心的问题是：基于FPGA平台运行c程序时，如何访问windows的文件系统，也就是手写图片经过处理后如何存入ROM中？