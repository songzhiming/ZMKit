//
//  YMFPSLabel.m
//  YMBaseDemo
//
//  Created by 宋志明 on 16/11/9.
//  Copyright © 2016年 宋志明. All rights reserved.
//

#import "YMFPSLabel.h"
#import "UIDevice+ZMAdd.h"


/**
 CADisplayLink
 A CADisplayLink object is a timer object that allows your application to synchronize its drawing to the refresh rate of the display.
 CADisplayLink是一种定时器，系统的每一帧刷新时都会被调用。
 
 CADisplayLink中的timestamp是系统每次调用时的系统时间戳，通过计算两次时间戳的间隔，可以得到每一帧所花费的时间，既可以获取当前每秒能刷新多少帧。
 */


#define kSize CGSizeMake(55,20)
@implementation YMFPSLabel{
    CADisplayLink *_link;
    NSTimeInterval _lastTime;
    NSUInteger _count;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (frame.size.width == 0 && frame.size.height == 0) {
        frame.size = kSize;
    }
    self =  [super initWithFrame:frame];
    self.backgroundColor = [UIColor colorWithWhite:0.000 alpha:0.500];
    self.textAlignment = NSTextAlignmentCenter;
    self.layer.cornerRadius = 5;
    self.clipsToBounds = YES;
    self.font = [UIFont systemFontOfSize:14.0];
    self.textColor = [UIColor redColor];
    _link = [CADisplayLink displayLinkWithTarget:self selector:@selector(show:)];
    [_link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSRunLoopCommonModes];
    return self;
}

- (void)dealloc {
    [_link invalidate];
}

- (CGSize)sizeThatFits:(CGSize)size {
    return kSize;
}

- (void)show:(CADisplayLink *)link {
    if (_lastTime == 0) {
        _lastTime = link.timestamp;
        return;
    }
    _count++;
    NSTimeInterval delta = link.timestamp - _lastTime;
    if (delta < 1) return;
    _lastTime = link.timestamp;
    float fps = _count / delta;
    _count = 0;
    NSMutableAttributedString *text = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"%d FPS %f CPUUsage",(int)round(fps),[UIDevice appCpuUsage]]];
    self.attributedText = text;
}


@end
