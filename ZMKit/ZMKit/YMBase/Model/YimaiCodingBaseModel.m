//
//  YimaiCodingBaseModel.m
//  DoctorPlatForm
//
//  Created by 张锐 on 16/7/4.
//  Copyright © 2016年 songzm. All rights reserved.
//

#import "YimaiCodingBaseModel.h"
#import <objc/runtime.h>

@implementation YimaiCodingBaseModel

#pragma mark - NSCoding
-(id)initWithCoder:(NSCoder *)decoder {
    self = [super init];
    if (!self) {
        return self;
    }
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);
    for (NSUInteger i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        [self setValue:[decoder decodeObjectForKey:key] forKey:key];
    }
    free(properties);
    return self;
}
- (void)encodeWithCoder:(NSCoder *)coder {
    unsigned int count;
    objc_property_t *properties = class_copyPropertyList([self class], &count);     for (NSUInteger i = 0; i < count; i++) {
        objc_property_t property = properties[i];
        NSString *key = [NSString stringWithUTF8String:property_getName(property)];
        [coder encodeObject:[self valueForKey:key] forKey:key];
    }
    free(properties);
}


@end
