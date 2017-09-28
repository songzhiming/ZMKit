//
//  UIBarButtonItem+YMAdd.m
//  YMBaseDemo
//
//  Created by joe on 2016/11/16.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "UIBarButtonItem+YMAdd.h"
#import "UIImage+YMAdd.h"
#import "UIView+YMAdd.h"
@implementation UIBarButtonItem (YMAdd)

+ (instancetype)itemWithNorImage:(NSString *)norImageName hightImage:(NSString *)hightImage target:(id)target action:(SEL)action
{
    // 1.创建按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置默认状态图片
    [button setBackgroundImage:[UIImage imageNamed:norImageName] forState:UIControlStateNormal];
    // 设置高亮状态图片
    [button setBackgroundImage:[UIImage imageNamed:hightImage] forState:UIControlStateHighlighted];
    // 添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // size
    button.size = button.currentBackgroundImage.size;
    // 返回item
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (instancetype)itemWithNorImage:(NSString *)norImageName hightImage:(NSString *)hightImage customBundleName:(NSString *)bundleName target:(id)target action:(SEL)action
{
    // 1.创建按钮
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    // 设置默认状态图片
    [button setBackgroundImage:[UIImage imageNamed:norImageName customBundleName:bundleName] forState:UIControlStateNormal];
    // 设置高亮状态图片
    [button setBackgroundImage:[UIImage imageNamed:hightImage customBundleName:bundleName] forState:UIControlStateHighlighted];
    // 添加监听事件
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    // size
    button.size = button.currentBackgroundImage.size;
    // 返回item
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
