
//
//  userViewController.m
//  News-App
//
//  Created by 李春阳 on 15/12/30.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import "userViewController.h"

@interface userViewController ()

@property(strong , nonatomic)NSArray *dataList;

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
//    load
    self.dataList = [NSArray arrayWithContentsOfFile:path];
    
}

-(void)loadTableView{
    
    UserItem = [[UITableView alloc]initWithFrame:CGRectMake(0, 42, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStyleGrouped];
    UserItem.delegate = self;
    UserItem.dataSource = self;
    UserItem.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    [self.view addSubview:UserItem];
}




- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    if (section == 0) {
        return 90;
    }
    return 20;
}

#pragma mark - datasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{

    return self.dataList.count;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
//    每个分组的数组,每个分组的行数
    NSArray *array = self.dataList[section];
    NSLog(@"array count : %lu" , (unsigned long)array.count);
    return array.count;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    NSString *cellIdentity = @"cell";
    
    UITableViewCell *cell =  nil;
    
    NSDictionary *dict = self.dataList[indexPath.section][indexPath.row];
    NSString *detail = dict[@"detail"];
    
//    UITableViewCell *cell = [UserItem dequeueReusableCellWithIdentifier:cellIdentity];

    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    }else{
    
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:nil];
        [cell.detailTextLabel setText:detail];
    }
//    cell.textLabel.text = [setArr objectAtIndex:indexPath.section];
    [cell.textLabel setFont:[UIFont fontWithName:@"CourierNewPS-ItalicMT" size:12]];
    
    [cell.textLabel setText:dict[@"name"]];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
  
    return cell;
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



@end
