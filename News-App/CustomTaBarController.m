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
    
    //UITabBarItem *hotSpotItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:0];
    
    [hotSpotViewControl setTabBarItem:hotSpotItem];
    
    
    
 
    
    
    
    //笑话频道
    JokeViewController *jokeViewControl = [[JokeViewController alloc]init];
    
    UINavigationController *jokeNav = [[UINavigationController alloc]initWithRootViewController:jokeViewControl];
    UITabBarItem *jokeItem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemFavorites tag:1];
   
    [jokeViewControl setTabBarItem:jokeItem];
    
    
    
    //订阅频道
    ViewController *viewControl = [[ViewController alloc]init];
    UINavigationController *ViewNav =[[UINavigationController alloc]initWithRootViewController:viewControl];
    

    UITabBarItem *viewItem = [[UITabBarItem alloc]initWithTitle:@"订阅" image:[UIImage imageNamed:@"hot.png"] tag:2];
   
    [viewControl setTabBarItem:viewItem];
    
    
    
    
    self.viewControllers = @[ViewNav ,hotSoptNav , jokeNav  ];
    
    
    
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
