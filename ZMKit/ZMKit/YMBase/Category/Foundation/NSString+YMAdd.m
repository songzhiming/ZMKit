//
//  NSString+YMAdd.m
//  YMBaseDemo
//
//  Created by 宋志明 on 16/11/16.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "NSString+YMAdd.h"

@implementation NSString (YMAdd)

/** 获取文字Size */
+ (CGSize)sizeWithString:(NSString *)string font:(UIFont *)font WithSize:(CGSize)size{
    CGRect rect = [string boundingRectWithSize:CGSizeMake(size.width,size.height)
                                       options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin
                                    attributes:@{NSFontAttributeName: font}
                                       context:nil];
    
    return rect.size;
}

+ (CGSize)sizeWithStringWithParagraphStyle:(NSString *)string font:(UIFont *)font paragraphStyle:(NSMutableParagraphStyle *)paragraphStyle WithSize:(CGSize)size
{
    CGRect rect = [string boundingRectWithSize:size
                                       options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading  |NSStringDrawingUsesLineFragmentOrigin
                                    attributes:@{
                                                 NSFontAttributeName:font,
                                                 NSParagraphStyleAttributeName:paragraphStyle
                                                 }
                                       context:nil];
    return rect.size;
}


@end
