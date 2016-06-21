##所有工具 (暂时只有一个)
* ZXImageReloader

##ZXImageReloader
###用于改善当使用 SDWebImage加载了大量图片时内存暴涨导致应用闪退问题    改善加载多个图片时的网络占用和多次刷新问题
##使用方法  (BASE)
1. 导入头文件
2. 调用[  ImageView imageWithUrl ]方法


##实现说明 
1. 磁盘缓存和图片RESIZE大小通过宏定义调整
2. 磁盘缓存在cache中 
3. 给每个imageView一个该对象用于对它的image赋值即可
4. 建议使用场景:SDWebImage使用时占用内存过高的时候


##使用注意 
1. 当对多个IMAGEVIEW使用本工具时 CPU消耗较高 


![picture1](http://ww3.sinaimg.cn/mw690/be3cd04agw1f5206ahnkug20dz0gfb2g.gif)
![picture2](http://ww1.sinaimg.cn/mw690/be3cd04agw1f522bw88rfg20dz0gfkjs.gif)
