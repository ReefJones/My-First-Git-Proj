//
//  KernStyle.h
//  兑兑
//
//  Created by REEF on 2022/4/26.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "AttributedStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface KernStyle : AttributedStyle

/// 字间距样式
/// @param value 字间距
/// @param range 作用范围
+ (KernStyle *)kern:(CGFloat)value range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
