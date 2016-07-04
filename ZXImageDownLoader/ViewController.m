//
//  ViewController.m
//  ZXImageDownLoader
//
//  Created by mac on 16/5/22.
//  Copyright © 2016年 zhaoxin. All rights reserved.
//

#import "ViewController.h"
#import "ZXImageReloader.h"
#import "UIImageView+ZXImageReloader.h"
//这么简单的东西就不需要什么demo了吧
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@property (strong,nonatomic) ZXImageReloader *imgViewReloader;
@end

@implementation ViewController
-(ZXImageReloader *)imgViewReloader{
    if (_imgViewReloader==nil) {
        _imgViewReloader=[[ZXImageReloader alloc]init];
    }
    return _imgViewReloader;


}
- (void)viewDidLoad {
    [super viewDidLoad];


    
        //将该对象作为属性时在block内使用__weak防止循环引用
        __weak typeof(self) vc=self;
    
        self.imgViewReloader.finish=^(UIImage *img){
            
        //在回调中给image赋值
        vc.imgView.image=img;
        
        //调调尺寸
       // [vc.imgView sizeToFit];
        
    };
    
    

  //  self.imgView.image = [UIImage imageNamed:@"图片2"];


}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSString *str=@"http://ww4.sinaimg.cn/mw690/be3cd04ajw1f437yjo1ntj20ku112h0x.jpg";
    [self.imgView ImageWithUrl:[str stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];


}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIImage *)scaleToSize:(UIImage *)img size:(CGSize)size{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    UIGraphicsBeginImageContext(size);
    // 绘制改变大小的图片
    [img drawInRect:CGRectMake(0, 0, size.width, size.height)];
    // 从当前context中创建一个改变大小后的图片
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    // 使当前的context出堆栈
    UIGraphicsEndImageContext();
    // 返回新的改变大小后的图片
    return scaledImage;
    
}
@end
