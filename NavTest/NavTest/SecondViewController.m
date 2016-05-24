//
//  SecondViewController.m
//  NavTest
//
//  Created by ZhangYunguang on 16/4/11.
//  Copyright © 2016年 ZhangYunguang. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"第二页";
    self.view.backgroundColor = [UIColor grayColor];
//    self.navigationItem.prompt = @"我是副标题";
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back"] style:UIBarButtonItemStylePlain target:self action:@selector(backClick)];
    self.navigationController.interactivePopGestureRecognizer.enabled = YES;
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 44)];
    //button.backgroundColor = [UIColor blackColor];
    button.titleLabel.font = [UIFont systemFontOfSize:14];
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0, -40, 0, 0)];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    
//    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStyleDone target:self action:@selector(backClick)];
//    backItem.tintColor = [UIColor redColor];
//    backItem.width = 100;
    
    self.navigationItem.leftBarButtonItem = backItem;
    UIBarButtonItem *item = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(backClick)];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:nil action:nil];
//    self.navigationItem.leftBarButtonItems = @[item,backItem];
//    self.navigationItem.leftBarButtonItem = item;
    
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
    view.backgroundColor = [UIColor redColor];
    UIBarButtonItem *item3 = [[UIBarButtonItem alloc] initWithCustomView:view];
    UIBarButtonItem *flexItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    [self setToolbarItems:@[flexItem,item,flexItem,item2,flexItem,item3,flexItem]];
    
    
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    
//    self.navigationController.toolbarHidden = NO;
    
}
-(void)backClick{
//    CATransition *animation = [[CATransition alloc] init];
//    animation.duration = 0.5;
//    animation.type = kCATransitionFade;
//    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
//    [self.navigationController.view.layer addAnimation:animation forKey:nil];
    [self.navigationController popViewControllerAnimated:NO];
}

-(void)viewWillAppear:(BOOL)animated{
    self.navigationController.navigationBar.tintColor = [UIColor grayColor];
    self.navigationController.navigationBar.barTintColor = [UIColor greenColor];
    NSLog(@"secondView   viewWillAppear");
}
-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"secondView   viewDidAppear");
}
-(void)viewWillDisappear:(BOOL)animated{
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    NSLog(@"secondView    viewWillDisappear");
}
-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"secondView    viewDidDisappear");
}
-(void)viewWillLayoutSubviews{
    NSLog(@"secondView    viewWillLayoutSubViews");
}
-(void)viewDidLayoutSubviews{
    NSLog(@"secondView    viewDidLayoutSubviews");
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
