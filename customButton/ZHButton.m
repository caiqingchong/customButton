//
//  ZHButton.m
//
//  Created by 张张凯 on 2018/1/25.
//  Copyright © 2018年 cyd. All rights reserved.
//

#import "ZHButton.h"

@implementation ZHButton

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

-(void)setup{
    //设置文字大小
    self.titleLabel.font = [UIFont systemFontOfSize:15.0];
}

+(instancetype)buttonWithType:(UIButtonType)buttonType{
    ZHButton *Button = [super buttonWithType:buttonType];
    if (Button) {
        Button.titleLabel.backgroundColor = [UIColor blueColor];
        Button.titleLabel.textAlignment = NSTextAlignmentCenter;
        Button.imageView.layer.masksToBounds = YES;
        
    }
    return Button;
}

// 返回背景CGRect（background）
- (CGRect)backgroundRectForBounds:(CGRect)bounds{
    NSLog(@"背景:%@",NSStringFromCGRect(bounds));
    return bounds;
}

// 返回内容CGRect 标题、图片、标题与图片之间的间隔(title + image + the image and title separately)
- (CGRect)contentRectForBounds:(CGRect)bounds{
    NSLog(@"内容:%@",NSStringFromCGRect(bounds));
    return bounds;
}

// 返回标题
- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    NSLog(@"标题:%@",NSStringFromCGRect(contentRect));
    return CGRectMake(0, contentRect.size.height-30, contentRect.size.width, 30);
}

// 返回图片
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
    NSLog(@"图片:%@",NSStringFromCGRect(contentRect));
    CGFloat imageWidth = MIN(contentRect.size.height - 30, contentRect.size.width);
    return CGRectMake(contentRect.size.width/2 - imageWidth/2, 0, imageWidth, imageWidth);
}


@end
