//
//  NSString+AttributedStyle.h
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AttributedStyle.h"
#import "IconStyle.h"
#import "KernStyle.h"
#import "FontStyle.h"
#import "ColorStyle.h"
#import "UnderlineStyle.h"
#import "ParagraphStyle.h"
#import "StrikethroughStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface NSString (AttributedStyle)

/// 多样化富文本
/// @param styles AttributedStyle对象构成的数组
- (NSAttributedString *)attributedStyles:(NSArray *)styles;

/// 多样化富文本+文本总体高度
/// @param styles AttributedStyle对象构成的数组
/// @param textWidth 显示文本区域的宽度
/// @param complete 返回文本总体的高度
- (NSAttributedString *)attributedStyles:(NSArray *)styles textWidth:(CGFloat)textWidth complete:(void(^ __nullable)(CGFloat textHeight))complete;

NS_ASSUME_NONNULL_END

@end
