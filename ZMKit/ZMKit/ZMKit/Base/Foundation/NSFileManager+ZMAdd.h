//
//  NSFileManager+ZMAdd.h
//  ZMKit
//
//  Created by zhiming9 on 2017/9/27.
//  Copyright © 2017年 zhiming9. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (ZMAdd)

// 文件大小  filepath 文件路径
+ (long long)fileSizeAtPath:(NSString *)filePath;

// 文件夹大小 folderPath 文件夹路径
+ (long long)folderSizeAtPath:(NSString *)folderPath;


@end
