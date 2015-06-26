//
//  CustomNavigationBar.m
//  Parking-S
//
//  Created by Parking on 15/6/25.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "CustomNavigationBar.h"

@implementation CustomNavigationBar

- (instancetype)initWithFrame:(CGRect)frame imageString:(NSString *)imageStr {
    self = [super initWithFrame:frame];
    if (self) {
        self.frame = CGRectMake(0, 0, self.frame.size.width, 44);
        [self setBackgroundColor:[UIColor redColor]];
        UIImageView * imageView = [[UIImageView alloc]initWithFrame:self.bounds];
        imageView.image = [UIImage imageNamed:imageStr];
        [self addSubview:imageView];
        
    }
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
