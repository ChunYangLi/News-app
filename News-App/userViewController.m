
//
//  userViewController.m
//  News-App
//
//  Created by 李春阳 on 15/12/30.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import "userViewController.h"
#import "CollectionViewController.h"
#import "SharViewController.h"
#import "settingViewController.h"
#import "HelpViewController.h"
#import "AboutViewController.h"

@interface userViewController ()

@property(strong , nonatomic)NSArray *SettingList;

@end

@implementation userViewController


-(void)loadView{
    
    [super loadView];
    [self loadTableView];

    self.navigationItem.title = @"我的";

    
//    UINavigationItem *navItem = [[UINavigationItem alloc]init];
//    
//    UINavigationBar *navigationBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, 320, 64)];
//    
//    navigationBar.items = [NSArray arrayWithObject:navItem];

    [self.view setBackgroundColor:[UIColor whiteColor]];
//    [self.view addSubview:navigationBar];



}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    路径
    NSString *path = [[NSBundle mainBundle] pathForResource:@"setting" ofType:@"plist"];
//    loadata
    self.SettingList = [NSArray arrayWithContentsOfFile:path];
    
}

-(void)loadTableView{
    
    UserItemTable = [[UITableView alloc]initWithFrame:CGRectMake(0, 42, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    UserItemTable.delegate = self;
    UserItemTable.dataSource = self;
    UserItemTable.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:UserItemTable];
}




- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    if (section == 0) {
        return 90;
    }
    return 20;
}

#pragma mark - datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return self.SettingList.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    每个分组的数组,每个分组的行数
    NSArray *array = self.SettingList[section];
//    NSLog(@"array count : %lu" , (unsigned long)array.count);
    return array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell =  nil;
    
    NSDictionary *dict = self.SettingList[indexPath.section][indexPath.row];
    NSString *detail = dict[@"detail"];
    
    //如果没有详情，则cell的格式为一般格式
    if (detail == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    }else{
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
        [cell.detailTextLabel setText:detail];
    }
    [cell.textLabel setFont:[UIFont fontWithName:@"CourierNewPS-ItalicMT" size:12]];
    
    [cell.textLabel setText:dict[@"name"]];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
    
}




#pragma mark - delegate
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    //section == 0
    if (0 == indexPath.section) {
        if (0 == indexPath.row) {
            CollectionViewController *collectionView = [[CollectionViewController alloc]init];
            [self.navigationController pushViewController:collectionView animated:YES];
        }
        if (1 == indexPath.row  && 0 == indexPath.row ) {
            SharViewController *shareView = [[SharViewController alloc]init];
            [self.navigationController pushViewController:shareView animated:YES];
        }
    }
    
//    section == 1
    if (1 == indexPath.section &&0 == indexPath.row ) {
        
        settingViewController *settingView = [[settingViewController alloc]init];
        [self.navigationController pushViewController:settingView animated:YES];
    }
    
//    section == 2
    if (2 == indexPath.section && 0 == indexPath.row) {
//        获取当前的表格
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath ];
//        cell.tag = !cell.tag;
        NSString *str = @"已是最新版本";
        [UserItemTable reloadData ];
        [cell.detailTextLabel setText:str];

    }
    
//    section == 3
    
    if (3 == indexPath.section && 0 == indexPath.row) {
   
        HelpViewController *helpView = [[HelpViewController alloc]init];
        [self.navigationController pushViewController:helpView animated:YES];
    }
    
//    section == 4
    if (4 == indexPath.section && 0 == indexPath.row) {
        AboutViewController *aboutView = [[AboutViewController alloc]init];
        [self.navigationController pushViewController:aboutView animated:YES];
    }
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
