//
//  UIImage+ZMAdd.m
//  ZMKit
//
//  Created by zhiming9 on 2017/9/27.
//  Copyright © 2017年 zhiming9. All rights reserved.
//

#import "UIImage+ZMAdd.h"

@implementation UIImage (ZMAdd)

+ (UIImage *)imageNamed:(NSString *)imageName bundleName:(NSString *)bundleName
{
    NSString *imageN = [NSString stringWithFormat:@"%@.bundle/%@", bundleName, imageName];
    UIImage *image = [UIImage imageNamed:imageN];
    return image;
}

@end
