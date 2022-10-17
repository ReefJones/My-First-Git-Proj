//
//  StrikethroughStyle.m
//  AusData
//
//  Created by REEF on 2022/9/22.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "StrikethroughStyle.h"

@implementation StrikethroughStyle

+ (StrikethroughStyle *)strikethrough:(id)value range:(NSRange)range
{
    return (StrikethroughStyle *)[StrikethroughStyle attributedName:NSStrikethroughStyleAttributeName value:value range:range];
}

@end
