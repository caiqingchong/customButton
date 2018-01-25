//
//  ViewController.m
//  ZHButton
//
//  Created by 张张凯 on 2018/1/25.
//  Copyright © 2018年 TRS. All rights reserved.
//

#import "ViewController.h"
#import "ZHButton.h"
static UIImage* createImageWithColor(UIColor* color)
{
    CGRect rect=CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZHButton *button = [ZHButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 80, 110);
    button.layer.masksToBounds = YES;
    button.layer.cornerRadius = 5;
    button.layer.borderWidth = 1;
    button.layer.borderColor = [UIColor redColor].CGColor;
    [button setTitle:@"上图下文上图下文上图下文上图下文" forState:UIControlStateNormal];
    //    button.titleLabel.font = [UIFont systemFontOfSize:10.0];也可以再此处设置文字的大小
    [button setImage:createImageWithColor([UIColor cyanColor]) forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"Gakki1.png"] forState:UIControlStateNormal];
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
