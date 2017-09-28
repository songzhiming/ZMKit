//
//  UIImage+YMAdd.h
//  YMBaseDemo
//
//  Created by joe on 2016/11/21.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AssetsLibrary/AssetsLibrary.h>
#import <ImageIO/ImageIO.h>
@interface UIImage (YMAdd)
static size_t getAssetBytesCallback(void *info, void *buffer, off_t position, size_t count);
static void releaseAssetCallback(void *info);
- (UIImage *)thumbnailForAsset:(ALAsset *)asset maxPixelSize:(NSUInteger)size;
- (UIImage *)imageByScalingAndCroppingForSize:(CGSize)targetSize;
+ (UIImage *)imageNamed:(NSString *)imageName customBundleName:(NSString *)bundleName;
@end
