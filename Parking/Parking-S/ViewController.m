//
//  ViewController.m
//  Parking-S
//
//  Created by Parking on 15/6/25.
//  Copyright (c) 2015年 Parking. All rights reserved.
//

#import "ViewController.h"
#import "TabBarView.h"
#import "CustomNavigationBar.h"
@interface ViewController ()<TabBarButtonDelegate>
{
    NSMutableArray * _allControllersArray;
    
    UIViewController * _lastVC;
    
}

@property (nonatomic,strong)NSMutableArray * viewcontrollers;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _allControllersArray = [[NSMutableArray alloc]init];
    self.viewcontrollers = [[NSMutableArray alloc]init];
    [self initializeWithTabBar];
    [self initializeWithControllers];
    
        [self changeButton:0];
}

//下方按钮
- (void)initializeWithTabBar {
    
    NSLog(@"%f",[FiexblFrame ratio]);
    TabBarView * tabBarV = [[TabBarView alloc]initWithFrame:[FiexblFrame frameWithIPhone5Frame:CGRectMake(0, 500, 320, 68)]];
    //代理实现每个按钮的切换
    tabBarV.delegate = self;
    [self.view addSubview:tabBarV];
    //把当前的视图放在最顶层
    [self.view bringSubviewToFront:tabBarV];

}

- (void)initializeWithControllers {
    NSArray * VCNames = @[@"MapViewController",@"ShowViewController",@"ChatViewController"];
    for (int i = 0; i < VCNames.count; i ++) {
        //找到那个类名,根据类名去初始化控制器
        Class class = NSClassFromString(VCNames[i]);
        UIViewController * vc = [[class alloc]init];
        vc.view.frame = [FiexblFrame frameWithIPhone5Frame:CGRectMake(0, 0, 360, 568)];
        
        UINavigationController * navc = [[UINavigationController alloc]initWithRootViewController:vc];
        navc.navigationBarHidden = YES;
        //自定义导航栏,如要背景图片直接传个String进去就行了
        CustomNavigationBar * customNavBar = [[CustomNavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44) imageString:@"C7ED36F9957F9944ED570A00AFAD70B7.jpg"];
        
        //如果需要按钮,这里直接加就行了
//        UINavigationItem * barItem = [[UINavigationItem alloc]init];
        //将导航栏放在一个数组里,根据数组下标去访问当前点的是哪个按钮
        [self.viewcontrollers addObject:navc];
        
        if (i == 0) {
            [vc.view addSubview:customNavBar];
        }
        
        if (i == 1) {
            [vc.view addSubview:customNavBar];
        }
        
        if (i == 2) {
            [vc.view addSubview:customNavBar];
        }
        
        [self addChildViewController:navc];
//        [_allControllersArray addObject:vc];
    }
}

- (void)changeButton:(NSInteger)index
{
    UIViewController * nowVC = self.viewcontrollers[index];
    [self.view addSubview:nowVC.view];
    //把当前视图放在最顶层
    [self.view sendSubviewToBack:nowVC.view];
    if (_lastVC.view) {
        [_lastVC.view removeFromSuperview];
        [_lastVC removeFromParentViewController];
    }
    _lastVC = nowVC;
    
}

@end
