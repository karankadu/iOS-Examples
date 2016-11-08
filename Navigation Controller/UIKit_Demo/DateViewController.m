//
//  DateViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 28/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "DateViewController.h"

@interface DateViewController ()

@end

@implementation DateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _datepicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(0, 250, 320, 300)];
    
    _datepicker.datePickerMode=UIDatePickerModeDateAndTime;
    
    [_datepicker addTarget:self action:@selector(dateselect) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_datepicker];
    
    
    //bar button
    
    self.navigationItem.title=@"DatePickerView";
    
    self.navigationItem.rightBarButtonItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(btnclick)];
    
}

-(void)btnclick
{

//navigation to previus vc
    
  //  [self.navigationController popViewControllerAnimated:YES];
    
 //navigation to root controller

  //  [self.navigationController popToRootViewControllerAnimated:YES];
    
  //navigation to any vc using array

    NSArray *result=[self.navigationController viewControllers]; //this method for get object
    
    NSLog(@"%@",result);
    
    [self.navigationController popToViewController:[result objectAtIndex:2] animated:YES];
    

}

-(void)dateselect
{
    NSDateFormatter *format=[[NSDateFormatter alloc]init];
    
    [format setDateFormat:@"dd-MM-YYYY   hh-mm-ss-a"]; //here a=AM/PM, dd=Date,DD=count of days from jan 1
    
    NSString *result=[format stringFromDate:_datepicker.date];
    
    //[format dateFromString:<#(nonnull NSString *)#>];
    
    NSLog(@"%@",result);

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

@end
