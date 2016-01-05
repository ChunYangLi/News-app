//
//  userViewController.h
//  News-App
//
//  Created by 李春阳 on 15/12/30.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface userViewController : UIViewController<UITableViewDataSource , UITableViewDelegate>
{
    UITableView *UserItemTable;
}

@end
