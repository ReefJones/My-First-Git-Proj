//
//  StrikethroughStyle.h
//  AusData
//
//  Created by REEF on 2022/9/22.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "AttributedStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface StrikethroughStyle : AttributedStyle

/// 删除线样式
/// @param value 下划线风格
/// @param range 作用范围
+ (StrikethroughStyle *)strikethrough:(id)value range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
