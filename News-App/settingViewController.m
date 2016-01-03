//
//  settingViewController.m
//  News-App
//
//  Created by 李春阳 on 16/1/3.
//  Copyright © 2016年 李春阳. All rights reserved.
//

#import "settingViewController.h"

@interface settingViewController ()

@end

@implementation settingViewController

-(void)loadView{

    [super loadView];
    _settingTable = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _settingTable.delegate = self;
    _settingTable.dataSource = self;
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
