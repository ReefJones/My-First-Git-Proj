//
//  UnderlineStyle.m
//  兑兑
//
//  Created by REEF on 2022/4/13.
//  Copyright © 2022 REEF. All rights reserved.
//

#import "UnderlineStyle.h"

@implementation UnderlineStyle

+ (UnderlineStyle *)underline:(id)value range:(NSRange)range
{
    return (UnderlineStyle *)[UnderlineStyle attributedName:NSUnderlineStyleAttributeName value:value range:range];
}

@end
