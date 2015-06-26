//
//  TabBarView.m
//  Parking-S
//
//  Created by Parking on 15/6/25.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "TabBarView.h"
NSMutableArray * _buttonIndexArray = nil;
//当前点的那一个button
UIButton * _lastButton;
@implementation TabBarView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor redColor];
    _buttonIndexArray = [[NSMutableArray alloc] init];
    if (self) {
        for (int i = 0; i < 3; i ++) {
            UIButton * tabBarButton = [[UIButton alloc]initWithFrame:[FiexblFrame frameWithIPhone5Frame:CGRectMake(15 + i * (65+50), 1, 65, 65)]];
            
            tabBarButton.backgroundColor = [UIColor grayColor];
            tabBarButton.layer.cornerRadius = CGRectGetWidth(tabBarButton.frame)/2;
            [tabBarButton addTarget:self action:@selector(processButtonDelegate:) forControlEvents:UIControlEventTouchUpInside];
            [self addSubview:tabBarButton];
            //把按钮撞倒数组里 就可以找到对应的第几个了
            
            [_buttonIndexArray addObject:tabBarButton];
        }
    }
    return self;
}

- (void)processButtonDelegate:(UIButton *)sender
{
    
    sender.userInteractionEnabled = NO;
    _lastButton.userInteractionEnabled = YES;
    if (sender == _lastButton) {
        return;
    }
    
    if (self.delegate && [self.delegate respondsToSelector:@selector(changeButton:)]) {
        [self.delegate changeButton:[self findButtonInArray:sender]];
    }
    
    _lastButton = sender;
    
    
}

- (NSInteger)findButtonInArray:(UIButton *)sender{
    __block NSInteger index = 0;
    [_buttonIndexArray enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        if (obj == sender) {
            index = idx;
        }
    }];
    return index;
}










@end
