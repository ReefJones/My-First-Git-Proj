//
//  FontStyle.m
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import "FontStyle.h"

@implementation FontStyle

/// 字体样式
/// @param font 字体
/// @param range 作用范围
+ (FontStyle *)font:(UIFont *)font range:(NSRange)range
{
    return (FontStyle *)[FontStyle attributedName:NSFontAttributeName value:font range:range];
}

@end
