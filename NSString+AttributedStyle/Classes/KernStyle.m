//
//  KernStyle.m
//  兑兑
//
//  Created by REEF on 2022/4/26.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "KernStyle.h"

@implementation KernStyle

/// 字间距样式
/// @param value 字间距
/// @param range 作用范围
+ (KernStyle *)kern:(CGFloat)value range:(NSRange)range
{
    return (KernStyle *)[KernStyle attributedName:NSKernAttributeName value:@(value) range:range];
}

@end
