//
//  UIView+Flexible.m
//  屏幕适配
//
//  Created by Parking on 15/6/26.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "UIView+Flexible.h"
#import "FiexblFrame.h"
@implementation UIView (Flexible)
- (instancetype)initWithIphoneFrame:(CGRect)frame {
    
   
    self = [self initWithFrame:[FiexblFrame frameWithIPhone5Frame:frame]];
    
    NSLog(@"%@",self);
    // 不要这样写 会崩
    //    self = [super init];
    //    self.frame = [FlexibleFrame frameWithIphone5Frame:frame];
    return self;
}

@end
