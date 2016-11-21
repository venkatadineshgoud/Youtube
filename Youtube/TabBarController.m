//
//  TabBarController.m
//  Example
//
//  Created by IgorBizi@mail.ru on 12/19/15.
//  Copyright © 2015 IgorBizi@mail.ru. All rights reserved.
//

#import "TabBarController.h"
#import "UITabBarController+BIZSelectedBackgroundForTabBarItem.h"


@interface TabBarController () <UITabBarControllerDelegate>
@end


@implementation TabBarController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UITabBar appearance] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setBarTintColor:[UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:1]];
    self.delegate = self;
    
}

@end
