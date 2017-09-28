//
//  UIView+YMAdd.h
//  YMBaseDemo
//
//  Created by 宋志明 on 16/11/16.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YMAdd)

@property (nonatomic,assign) CGFloat x;
@property (nonatomic,assign) CGFloat y;
@property (nonatomic,assign) CGFloat centerX;
@property (nonatomic,assign) CGFloat centerY;
@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat height;
@property (nonatomic,assign) CGSize size;

//找到最近的上一级 ViewController
+ (UIViewController *)findNearsetViewController:(UIView *)view;

@end
