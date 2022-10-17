//
//  ColorStyle.m
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import "ColorStyle.h"

@implementation ColorStyle

/// 颜色样式
/// @param color 颜色
/// @param range 作用范围
+ (ColorStyle *)color:(UIColor *)color range:(NSRange)range
{
    return (ColorStyle *)[ColorStyle attributedName:NSForegroundColorAttributeName value:color range:range];
}

@end
