//
//  CustomTaBarController.m
//  News-App
//
//  Created by 李春阳 on 15/12/18.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import "CustomTaBarController.h"
#import "HotSpotViewController.h"
#import "JokeViewController.h"
#import "userViewController.h"
#import "ViewController.h"
@interface CustomTaBarController ()

@end

@implementation CustomTaBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarControlAndNavControl];
}


-(void)setTabBarControlAndNavControl{

    
    
    // 热点频道
    HotSpotViewController *hotSpotViewControl =  [[HotSpotViewController alloc] init];
    
    UINavigationController *hotSoptNav = [[UINavigationController alloc]initWithRootViewController:hotSpotViewControl];
    
    UITabBarItem *hotSpotItem = [[UITabBarItem alloc]initWithTitle:@"新闻" image:[UIImage imageNamed:@"news.png"] tag:1];
    
    [hotSpotViewControl setTabBarItem:hotSpotItem];
    
    
    
    
    //订阅频道
    ViewController *viewControl = [[ViewController alloc]init];
    UINavigationController *ViewNav =[[UINavigationController alloc]initWithRootViewController:viewControl];
    

    UITabBarItem *viewItem = [[UITabBarItem alloc]initWithTitle:@"订阅" image:[UIImage imageNamed:@"hot.png"] tag:2];
   
    [viewControl setTabBarItem:viewItem];
    
    
    
    //笑话频道
    JokeViewController *jokeViewControl = [[JokeViewController alloc]init];
    
    UINavigationController *jokeNav = [[UINavigationController alloc]initWithRootViewController:jokeViewControl];
    UITabBarItem *jokeItem = [[UITabBarItem alloc]initWithTitle:@"搞笑" image:[UIImage imageNamed:@"joke.png"] tag:3];
    
    
    [jokeViewControl setTabBarItem:jokeItem];
    
    
    //我的
    
    userViewController *userTabViewControl = [[userViewController alloc]init];
    UINavigationController *MyNav = [[UINavigationController alloc]initWithRootViewController:userTabViewControl];
    
    UITabBarItem *MyItem = [[UITabBarItem alloc]initWithTitle:@"我的" image:[UIImage imageNamed:@"user.png"] tag:4];
    
    [userTabViewControl setTabBarItem:MyItem];
    
    
    self.viewControllers = @[ViewNav ,hotSoptNav , jokeNav  ,MyNav];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
