##所有工具 (暂时只有一个)
* ZXImageReloader

##ZXImageReloader
###用于改善当使用 SDWebImage加载了大量图片时内存暴涨导致应用闪退问题
##使用方法 
1. 导入头文件
2. 为你的每个imageView创建一个ZXImageReloader对象 
3. 用finish属性(block 该block带有Image*类型的参数一个)设定回调需要执行的代码 (通常只要用block的参数给对应的imageView的Image赋值即可 ) 
4. 调用-(void)ImageWithUrl:(NSString *)url;方法 传递地址的string对象  即可 

##实现说明 

1. 没有使用imageView的分类 个人感觉这样更直观 
2. 没有内存缓存 防止当图片比较大同时加载比较多时造成难以调整的内存占用过高
3. 磁盘缓存在cache中 
4. 给每个imageView一个该对象用于对它的image赋值即可
5. 建议使用场景:加载网络图片的地方都能用  
6. 支持的类型  UIImage可以加载的类型  
7. 项目viewController中有简单的使用方法  

##使用注意 
1. 作为对象的属性时在  block中调用容器的其他属性赋值时注意使用__weak  


