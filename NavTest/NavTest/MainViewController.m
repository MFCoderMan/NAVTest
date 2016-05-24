//
//  MainViewController.m
//  NavTest
//
//  Created by ZhangYunguang on 16/4/11.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "MainViewController.h"
#import "SecondViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:21]};
    //self.title = @"首页";
    self.navigationItem.title = @"首页";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    button.center = self.view.center;
    button.backgroundColor = [UIColor grayColor];
    [button setTitle:@"点我" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    NSLog(@"mainView  viewDidLoad");
    
    
}
-(void)buttonClick{
    SecondViewController *second = [[SecondViewController alloc] init];
    
//    CATransition *animation = [CATransition animation];
//    [animation setDuration:1];
//    [animation setType:kCATransitionMoveIn];
//    [animation setSubtype:kCATransitionReveal];
//    [animation setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
//    [self.navigationController.view.layer addAnimation:animation forKey:nil];
    
    
    [self.navigationController pushViewController:second animated:NO];
    
}




-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.toolbarHidden = YES;
    NSLog(@"mainView   viewWillAppear");
}
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"mainView   viewDidAppear");
}
-(void)viewWillDisappear:(BOOL)animated{
    NSLog(@"mainView    viewWillDisappear");
}
-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"mainView    viewDidDisappear");
}
-(void)viewWillLayoutSubviews{
    NSLog(@"mainView    viewWillLayoutSubViews");
}
-(void)viewDidLayoutSubviews{
    NSLog(@"mainView    viewDidLayoutSubviews");
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
