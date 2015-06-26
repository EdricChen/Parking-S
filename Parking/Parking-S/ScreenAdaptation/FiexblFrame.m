//
//  FiexblFrame.m
//  Parking-S
//
//  Created by Parking on 15/6/26.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "FiexblFrame.h"

#define SCREN_SIZE [UIScreen mainScreen].bounds.size
#define IPHONE5_SIZE CGSizeMake(320,568)

@implementation FiexblFrame

+ (CGFloat)ratio
{
    return SCREN_SIZE.height/IPHONE5_SIZE.height;
}

+ (CGRect)frameWithIPhone5Frame:(CGRect)iPhone5Frame
{
    CGFloat x = iPhone5Frame.origin.x * [self ratio];
    CGFloat y = iPhone5Frame.origin.y * [self ratio];
    CGFloat width = iPhone5Frame.size.width * [self ratio];
    CGFloat height = iPhone5Frame.size.height * [self ratio];
    return CGRectMake(x, y, width, height);
}


@end
