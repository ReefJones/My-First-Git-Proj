//
//  ParagraphStyle.m
//  兑兑
//
//  Created by REEF on 2022/4/26.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "ParagraphStyle.h"

@implementation ParagraphStyle

/// 段落样式
/// @param paragraph 段落样式结构体
/// @param range 作用范围
+ (ParagraphStyle *)paragraph:(Paragraph)paragraph range:(NSRange)range
{
    NSMutableParagraphStyle *style = [NSMutableParagraphStyle new];
    style.lineBreakMode = NSLineBreakByWordWrapping;     // 换行模式
    style.alignment = paragraph.alignment;               // 对齐方式
    style.headIndent = paragraph.headIndent;             // 整体缩进(首行除外)
    style.tailIndent = -paragraph.headIndent;            // 行尾缩进
    style.firstLineHeadIndent = paragraph.headIndent;    // 首行缩进
    style.lineSpacing = paragraph.lineSpacing;           // 行间距
    style.paragraphSpacing = paragraph.paragraphSpacing; // 段落结尾间距
//    style.paragraphSpacingBefore = 15.f;                 // 段落开头间距

    return (ParagraphStyle *)[ParagraphStyle attributedName:NSParagraphStyleAttributeName value:style range:range];
}

@end
