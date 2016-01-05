//
//  settingViewController.m
//  News-App
//
//  Created by 李春阳 on 16/1/3.
//  Copyright © 2016年 李春阳. All rights reserved.
//

#import "settingViewController.h"

@interface settingViewController ()

@property(strong , nonatomic)NSArray *settingDetailList;


@end

@implementation settingViewController

-(void)loadView{

    [super loadView];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self loadTabView];
}

-(void)loadTabView{

    _settingTable = [[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStyleGrouped];
    _settingTable.delegate = self;
    _settingTable.dataSource = self;
    
    [self.view addSubview:_settingTable];

}


- (void)viewDidLoad {
    [super viewDidLoad];
   
    //   读取plist文件
    NSString *path = [[NSBundle mainBundle] pathForResource:@"settingdetail" ofType:@"plist"];
    self.settingDetailList = [NSArray arrayWithContentsOfFile:path];
}


#pragma mark - datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return self.settingDetailList.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
 
    NSArray *SettingdetailArr = self.settingDetailList[section];
    return SettingdetailArr.count;
    
}


#pragma mark -datasource

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell =  nil;
    
    NSDictionary *dict = self.settingDetailList[indexPath.section][indexPath.row];
    NSString *detail = dict[@"detail"];
    
//    
//    if ( 0 == indexPath.section && 0 == indexPath.row) {
//        
//    }
   
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
        [cell.detailTextLabel setText:detail];
    
    [cell.textLabel setFont:[UIFont fontWithName:@"CourierNewPS-ItalicMT" size:12]];
    
    [cell.textLabel setText:dict[@"name"]];
//    [cell setAccessoryType:UITableViewCellAccessoryCheckmark];
//    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
