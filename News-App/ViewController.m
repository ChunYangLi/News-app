//
//  ViewController.m
//  News-App
//
//  Created by 李春阳 on 15/12/18.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的订阅";
    
    //leftButton
//    UIBarButtonItem *loginItem = [[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"more.png"] style:UIBarButtonItemStylePlain target:self action:@selector(login)];
//    [self.navigationItem setLeftBarButtonItem:loginItem];
//    

    
    UIView *baseView = [[UIView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    baseView.backgroundColor = [UIColor whiteColor];
    self.view = baseView;

    
}

//-(void)login{
//
//    NSLog(@"login");
//    
//    loginViewController *loginView = [[loginViewController alloc]init];
//    [self.navigationController pushViewController:loginView animated:YES];
//    
//}
//
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
