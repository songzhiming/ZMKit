//
//  NSString+YMAdd.h
//  YMBaseDemo
//
//  Created by 宋志明 on 16/11/16.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NSString (YMAdd)

/** 获取文字Size */
+ (CGSize)sizeWithString:(NSString *)string font:(UIFont *)font WithSize:(CGSize)size;


+ (CGSize)sizeWithStringWithParagraphStyle:(NSString *)string font:(UIFont *)font paragraphStyle:(NSMutableParagraphStyle *)paragraphStyle WithSize:(CGSize)size;

@end
