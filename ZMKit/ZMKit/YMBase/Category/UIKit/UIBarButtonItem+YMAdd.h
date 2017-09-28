//
//  UIBarButtonItem+YMAdd.h
//  YMBaseDemo
//
//  Created by joe on 2016/11/16.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (YMAdd)

/**
 *  创建自定义item
 *
 *  @param norImageName 默认状态图片
 *  @param hightImage 高亮状态图片
 *  @param action       点击事件
 *
 *  @return item
 */
+ (instancetype)itemWithNorImage:(NSString *)norImageName hightImage:(NSString *)hightImage target:(id)target action:(SEL)action;
+ (instancetype)itemWithNorImage:(NSString *)norImageName hightImage:(NSString *)hightImage customBundleName:(NSString *)bundleName target:(id)target action:(SEL)action;


@end
