//
//  AttributedStyle.m
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import "AttributedStyle.h"

@implementation AttributedStyle

+ (AttributedStyle *)attributedName:(NSString *)attributedName value:(id)value range:(NSRange)range
{
    AttributedStyle *style = [[self class] new];
    style.attributedName = attributedName;
    style.value = value;
    style.range = range;
    return style;
}

+ (AttributedStyle *)attributedIcon:(UIImage *)icon index:(NSUInteger)index offset:(CGPoint)offset
{
    AttributedStyle *style = [[self class] new];
    NSTextAttachment *attachment = [[NSTextAttachment alloc] init];
    attachment.image = icon;
    attachment.bounds = CGRectMake(offset.x, offset.y, attachment.image.size.width, attachment.image.size.height);
    style.attachment = attachment;
    style.index = index;
    return style;
}

@end
