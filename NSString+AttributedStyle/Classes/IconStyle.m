//
//  IconStyle.m
//  AusData
//
//  Created by REEF on 2022/9/23.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "IconStyle.h"

@implementation IconStyle

+ (IconStyle *)icon:(UIImage *)icon index:(NSUInteger)index offset:(CGPoint)offset
{
    return (IconStyle *)[IconStyle attributedIcon:icon index:index offset:offset];
}

@end
