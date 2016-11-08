//
//  InputViewController.m
//  DataPassToVC
//
//  Created by Felix-ITS 006 on 05/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "InputViewController.h"
#import "TableViewController.h"
#import "AppDelegate.h"
@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
  //  _temparray=[[NSMutableArray alloc]init]; no need to initialise the array as we alredy assigning the mainarray address to temparray
    

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
    
    [_temparray addObject:_txt1.text];
    
   
   [self.navigationController popToRootViewControllerAnimated:YES];
    
    
}
@end
