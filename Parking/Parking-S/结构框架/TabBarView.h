//
//  TabBarView.h
//  Parking-S
//
//  Created by Parking on 15/6/25.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TabBarButtonDelegate <NSObject>

- (void)changeButton:(NSInteger)index;

@end


@interface TabBarView : UIView
@property (nonatomic,strong)id <TabBarButtonDelegate>delegate;

@end
