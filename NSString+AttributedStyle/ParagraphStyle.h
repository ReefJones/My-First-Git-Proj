//
//  ParagraphStyle.h
//  兑兑
//
//  Created by REEF on 2022/4/26.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "AttributedStyle.h"

/// 段落样式结构体
struct REEFParagraph {
    NSTextAlignment alignment; // 对齐方式
    CGFloat headIndent;        // 首行缩进
    CGFloat lineSpacing;       // 行间距
    CGFloat paragraphSpacing;  // 段落间距
};
typedef struct REEFParagraph Paragraph;
CG_INLINE Paragraph
ParagraphMake(NSTextAlignment alignment, CGFloat headIndent, CGFloat lineSpacing, CGFloat paragraphSpacing)
{
    Paragraph paragraph;
    paragraph.alignment = alignment;
    paragraph.headIndent = headIndent;
    paragraph.lineSpacing = lineSpacing;
    paragraph.paragraphSpacing = paragraphSpacing;
    return paragraph;
}

NS_ASSUME_NONNULL_BEGIN

@interface ParagraphStyle : AttributedStyle

/// 段落样式
/// @param paragraph 段落样式结构体
/// @param range 作用范围
+ (ParagraphStyle *)paragraph:(Paragraph)paragraph range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
