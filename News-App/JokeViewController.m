//
//  JokeViewController.m
//  News-App
//
//  Created by 李春阳 on 15/12/18.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import "JokeViewController.h"
#import "loginViewController.h"
@interface JokeViewController ()

@end

@implementation JokeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"笑话";
    [self.view setBackgroundColor:[UIColor grayColor]];
    
    
   
}

-(void)login
{
    loginViewController *login = [[loginViewController alloc]init];
  
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
