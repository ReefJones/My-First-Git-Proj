//
//  AttributedStyle.h
//  兑兑
//
//  Created by Mac os x on 17/12/3.
//  Copyright © 2017年 REEF. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AttributedStyle : NSObject

@property (nonatomic, strong) NSString *attributedName;
@property (nonatomic, strong) id        value;
@property (nonatomic) NSRange           range;
+ (AttributedStyle *)attributedName:(NSString *)attributedName value:(id)value range:(NSRange)range;

@property (nonatomic, strong) NSTextAttachment *attachment;
@property (nonatomic, assign) NSUInteger        index;
+ (AttributedStyle *)attributedIcon:(UIImage *)icon index:(NSUInteger)index offset:(CGPoint)offset;

@end
