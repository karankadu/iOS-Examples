//
//  FirstViewController.m
//  DataPassToVC
//
//  Created by Felix-ITS 006 on 05/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)btnclick:(id)sender {
    
    SecondViewController *svc=[[SecondViewController alloc]init];
    
    svc.temp=_txt1.text;    //as we cen not send any value from vc to another vc we use some temp string to hold that value and in view did load we assighn to where we want
    
    [self.navigationController pushViewController:svc animated:YES];
    
    
    
}
@end
