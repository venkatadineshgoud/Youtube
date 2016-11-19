//
//  FourthViewController.m
//  Youtube
//
//  Created by Madu Venkata Dinesh Goud on 18/11/16.
//  Copyright © 2016 Madu Venkata Dinesh Goud. All rights reserved.
//

#import "FourthViewController.h"
#import "CategoriesViewController.h"


@interface FourthViewController ()
@property (strong, nonatomic) IBOutlet UIView *likeNavigationBar;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.likeNavigationBar.backgroundColor=[UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:1];
    // Do any additional setup after loading the view.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)menuButton:(UIButton *)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    CategoriesViewController *categoriesVC=[story instantiateViewControllerWithIdentifier:@"categoriesVC"];
    [self presentViewController:categoriesVC animated:NO completion:nil];
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
