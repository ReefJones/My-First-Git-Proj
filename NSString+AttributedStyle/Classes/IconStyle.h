//
//  IconStyle.h
//  AusData
//
//  Created by REEF on 2022/9/23.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "AttributedStyle.h"

NS_ASSUME_NONNULL_BEGIN

@interface IconStyle : AttributedStyle


/// 图标样式
///   - icon: 图标
///   - index: 插入的索引
///   - offset: 图标偏移量
+ (IconStyle *)icon:(UIImage *)icon index:(NSUInteger)index offset:(CGPoint)offset;

@end

NS_ASSUME_NONNULL_END
