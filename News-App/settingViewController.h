//
//  settingViewController.h
//  News-App
//
//  Created by 李春阳 on 16/1/3.
//  Copyright © 2016年 李春阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface settingViewController : UIViewController<UITableViewDataSource, UITableViewDelegate
>

@property(nonatomic , retain)UITableView *settingTable;

@end
