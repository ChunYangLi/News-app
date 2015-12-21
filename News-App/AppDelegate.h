//
//  AppDelegate.h
//  News-App
//
//  Created by 李春阳 on 15/12/18.
//  Copyright © 2015年 李春阳. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomTaBarController.h"
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong , nonatomic)UIViewController *ViewController;
@property(strong , nonatomic)CustomTaBarController *customBar;


@end

