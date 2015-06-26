//
//  MapViewController.m
//  Parking-S
//
//  Created by Parking on 15/6/25.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "MapViewController.h"

@interface MapViewController ()

@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor = [UIColor yellowColor];
    
    UILabel * label = [[UILabel alloc]initWithFrame:[FiexblFrame frameWithIPhone5Frame:CGRectMake(100, 100, 100, 100)]];
    label.backgroundColor = [UIColor redColor];
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
