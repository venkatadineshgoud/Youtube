//
//  TagViewController.m
//  Youtube
//
//  Created by Madu Venkata Dinesh Goud on 21/11/16.
//  Copyright © 2016 Madu Venkata Dinesh Goud. All rights reserved.
//

#import "TagViewController.h"
#import "MenuViewController.h"

@interface TagViewController ()
@property (strong, nonatomic) IBOutlet UIView *likeNavigationBar;
@property (strong, nonatomic) IBOutlet UISegmentedControl *segment;
@property (strong, nonatomic) IBOutlet UIView *offlineView;
@property (strong, nonatomic) IBOutlet UIView *watchlaterView;
@property (strong, nonatomic) IBOutlet UIView *purchasesView;

@end

@implementation TagViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.likeNavigationBar.backgroundColor=[UIColor colorWithRed:29/255.0 green:29/255.0 blue:29/255.0 alpha:1];
    
    self.offlineView.backgroundColor=[UIColor colorWithRed:214/255.0 green:214/255.0 blue:214/255.0 alpha:1];
    
    [[UISegmentedControl appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor], NSFontAttributeName : [UIFont systemFontOfSize:12] } forState:UIControlStateNormal];
    
    [[UISegmentedControl appearance] setTitleTextAttributes:@{ NSForegroundColorAttributeName : [UIColor blackColor], NSFontAttributeName : [UIFont systemFontOfSize:12] } forState:UIControlStateSelected];
    
    [[UISegmentedControl appearance] setTintColor:[UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1]];
    
    [[UISegmentedControl appearance] setBackgroundColor:[UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1]];
    
    [self.watchlaterView setHidden:YES];
    [self.purchasesView setHidden:YES];

    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)segmentController:(UISegmentedControl *)sender {
    
    if (self.segment.selectedSegmentIndex ==0) {
        
        [self.offlineView setHidden:NO];
        [self.watchlaterView setHidden:YES];
        [self.purchasesView setHidden:YES];
        
    } else if (self.segment.selectedSegmentIndex ==1) {
        
        [self.offlineView setHidden:YES];
        [self.watchlaterView setHidden:NO];
        [self.purchasesView setHidden:YES];
        
    } else {
        
        [self.offlineView setHidden:YES];
        [self.watchlaterView setHidden:YES];
        [self.purchasesView setHidden:NO];
    }
    
}
- (IBAction)menuButton:(UIButton *)sender {
    
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    MenuViewController *menuVC=[story instantiateViewControllerWithIdentifier:@"menuVC"];
    [self presentViewController:menuVC animated:NO completion:nil];
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
