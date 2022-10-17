//
//  NSString+AttributedStyle.m
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import "NSString+AttributedStyle.h"

@implementation NSString (AttributedStyle)

/// 多样化富文本
/// @param styles AttributedStyle对象构成的数组
- (NSAttributedString *)attributedStyles:(NSArray *)styles
{
    if (self.length <= 0)
    {
        return nil;
    }
    // 富文本
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:self];
    for (int i = 0; i < styles.count; i++)
    {
        AttributedStyle *style = styles[i];
        if ([style isKindOfClass:IconStyle.class])
        {
            [attributedText insertAttributedString:[NSAttributedString attributedStringWithAttachment:style.attachment] atIndex:style.index];
        }
        else
        {
            [attributedText addAttribute:style.attributedName value:style.value range:style.range];
        }
    }
    return attributedText;
}

/// 多样化富文本+文本总体高度
/// @param styles AttributedStyle对象构成的数组
/// @param textWidth 显示文本区域的宽度
/// @param complete 返回文本总体的高度
- (NSAttributedString *)attributedStyles:(NSArray *)styles textWidth:(CGFloat)textWidth complete:(void(^ __nullable)(CGFloat textHeight))complete
{
    if (self.length<=0 || textWidth<=0)
    {
        !complete?:complete(0);
        return nil;
    }
    // 文字属性
    NSMutableDictionary *attributes = [NSMutableDictionary dictionary];
    // 富文本
    NSMutableAttributedString *attributedText = [[NSMutableAttributedString alloc] initWithString:self];
    for (int i = 0; i < styles.count; i++)
    {
        AttributedStyle *style = styles[i];
        [attributes setValue:style.value forKey:style.attributedName];
        [attributedText addAttribute:style.attributedName value:style.value range:style.range];
    }
    // 文字高度
    CGSize size = [self boundingRectWithSize:CGSizeMake(textWidth, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    !complete?:complete(size.height);
    return attributedText;
}

@end
