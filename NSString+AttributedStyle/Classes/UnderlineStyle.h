//
//  UnderlineStyle.h
//  兑兑
//
//  Created by REEF on 2022/4/13.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "AttributedStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface UnderlineStyle : AttributedStyle

/// 下划线样式
/// @param value 下划线风格
/// @param range 作用范围
+ (UnderlineStyle *)underline:(id)value range:(NSRange)range;

@end

NS_ASSUME_NONNULL_END
