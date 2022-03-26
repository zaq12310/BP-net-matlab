# BP-net-matlab

习题，用matlab完成BP神经网络例子
1 bp拟合运算
2 药品销售预测
3 水果图形识别和分类

1 神经元和神经网络-习题1

习题1-1: 创建BP神经网络,输入1-5-1.
输入向量  P = [0 1 2 3 4 5 6 7 8 9 10];
期望输出  T = [0 1 2 3 4 3 2 1 2 3  4];
用matlab完成拟合运算.

运行的程序为exam1_1.mlx，学习规则为traingd 隐含层的激活函数为tansig 输出层激活函数为purelin 每次循环50次，最大循环500次
保存的神经网络为net.mat

Pred1为input所对应的初始网络预测值
![image](https://user-images.githubusercontent.com/92127845/160221037-5430e6f5-a2ac-4afb-bb90-8359ecb68cd8.png)

Pred2为input所对应的训练后网络预测值
![image](https://user-images.githubusercontent.com/92127845/160221038-7f3bdacf-71e7-4a70-a9a8-3a82aff94747.png)
![image](https://user-images.githubusercontent.com/92127845/160221048-9d8a8720-1c6d-4a3a-91a8-38e59c602f55.png)

加载训练后神经网络net.mat预测x=[1 5 1]时对应的输出情况
![image](https://user-images.githubusercontent.com/92127845/160221050-c1c308e5-4b04-4f37-a229-7908d4be3157.png)

习题1-2: 神经网络药品销售预测:用预测方法采用前三个月的销售量来预测第四个月的销售量.如用1、2、3月的销售量为输入预测第4个月的销售量，用2、3、4月的销售量预测第5个月的销售量等. 网络结构：输入层有3个结点，隐含层有5个结点，输出层有1个结点.隐含层的激活函数为tansig；输出层的激活函数为logsig。
月份	1	    2		  3	    4		  5		  6
销量	2056	2395	2600	2298	1634	1600
月份	7		  8		  9		  10		11		12
销量	1873	1478	1900	1500	2046	1556

方案：前六个样本数据进行训练，后三个进行测试验证

运行的程序为exam1_2.mlx 采用的学习规则为traingd 隐含层激活函数为tansig 输出层激活函数为logsig 每次循环500次 最大循环次数为15000
保存的神经网络为net2.mat

Pred1为input所对应的初始预测输出
![image](https://user-images.githubusercontent.com/92127845/160221083-7d23cf79-131a-413a-a1e7-b2de61abcec5.png)

Pred2为input所对应的训练后的输出
![image](https://user-images.githubusercontent.com/92127845/160221086-2f7e9e4c-d7d2-4f8c-bb71-335f3b1a581f.png)

![image](https://user-images.githubusercontent.com/92127845/160221093-a3753d33-cca6-4a06-bacf-a564e9c79b6b.png)


输入后三个样本点进行测试：
![image](https://user-images.githubusercontent.com/92127845/160221101-6310277e-958c-4be7-8228-3a3e6e45a4fe.png)


习题1-3: 水果图形识别和分类
水果的特征参数数据包括颜色和形状,图像颜色特征包括彩色和灰度信息处理,图像形状特征包括面积、周长、弧度等参数.利用这些水果特征识别橙子、香蕉和苹果.下面表格给出不同水果特征参数数据表,请设计三类水果橙子、香蕉和苹果的识别方法.
	     橙子	  香蕉	  苹果
颜色	1.220	  0.7605  1.6010
面积	3	      278	    11
周长	3 	    227	    11
弧度	4.1888	0.0647	1.1424


假设我们之前已经通过各种方法获得了一样水果的颜色，面积，周长,弧度参数
分别设为color area cir rad



①方案一：这件不知名水果只可能是橙子 香蕉 苹果中的一种

由于已知特征值，假设现在这里的只有橙子，香蕉，苹果，现在对他们进行分类
（采用普通的if分类方式，比如：周长大于20的是香蕉，弧度大于3的是橙子
只需要知道周长cir和弧度rad就可以分辨

运行函数exam1_3_1.m 函数为exam1_3_1(cir,rad)
![image](https://user-images.githubusercontent.com/92127845/160221143-d0b04195-89c5-42b4-abfe-832c94ffa104.png)


这种方案假设条件太苛刻，分辨得也很初步，没有完全利用所有已知数据




②方案二：直接对这三种水果进行识别 隐含层神经元为10 输入层有2个结点
只依靠周长cir和弧度rad来判别
运行的程序为exam1_3_2.mlx 采用的学习规则为traingdx 隐含层激活函数为tansig 输出层激活函数为purelin 每次循环50次 最大循环次数为500
保存的神经网络为net3_2.mat
其中先对各个数据进行归一化（利用函数double_0_1.m），再填入样本属性矩阵input
Target=[1 2 3]   1代表橙子 2代表香蕉 3代表苹果
Pred1为input所对应的初始预测输出
![image](https://user-images.githubusercontent.com/92127845/160221148-e5a7526d-de98-4a2d-a300-3185e1fcd7be.png)

Pred2为input所对应的训练后的输出
![image](https://user-images.githubusercontent.com/92127845/160221150-ddf71b75-7fdb-40cf-abf0-53d7644e41b8.png)

![image](https://user-images.githubusercontent.com/92127845/160221160-b7738793-abb5-4335-ad93-80317b815516.png)


输入后某不知名物品参数进行测试：依次为这样水果的周长,弧度参数
（cir ，rad）
![image](https://user-images.githubusercontent.com/92127845/160221153-f08d76b8-3671-42db-a9c6-7adb4c9df6de.png)

③方案三：直接对这三种水果进行识别 隐含层神经元为10 输入层有4个结点
运行的程序为exam1_3_3.mlx 采用的学习规则为traingdx 隐含层激活函数为tansig 输出层激活函数为purelin 每次循环50次 最大循环次数为500
保存的神经网络为net3_3.mat

其中先对各个数据进行归一化（利用函数double_0_1.m），再填入样本属性矩阵input
Target=[1 2 3]   1代表橙子 2代表香蕉 3代表苹果
Pred1为input所对应的初始预测输出
![image](https://user-images.githubusercontent.com/92127845/160221165-37489b9d-963b-4188-9eb4-ce01aacacf6d.png)

Pred2为input所对应的训练后的输出
![image](https://user-images.githubusercontent.com/92127845/160221169-b28b36d2-507f-47b1-81e4-530173fa63b5.png)
![image](https://user-images.githubusercontent.com/92127845/160221173-8ace6506-6919-45fd-aa0c-e8e8df2ea7f1.png)



输入后某不知名物品参数进行测试：依次为这样水果的颜色，面积，周长,弧度参数
（color， area ，cir ，rad）

![image](https://user-images.githubusercontent.com/92127845/160221184-c9494c9d-af9f-4523-9d64-bb68ba1ccd58.png)














