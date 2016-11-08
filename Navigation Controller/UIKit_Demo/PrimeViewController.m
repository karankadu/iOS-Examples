//
//  PrimeViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 26/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "PrimeViewController.h"
#import "TableViewController.h"


@interface PrimeViewController ()

@end

@implementation PrimeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //Code for adding the text feild
    
    _t1=[[UITextField alloc]initWithFrame:CGRectMake(50, 100, 150, 30)];
    _t1.borderStyle=UITextBorderStyleRoundedRect;
    
    _t1.keyboardAppearance=UIKeyboardAppearanceDark;
    _t1.keyboardType=UIKeyboardTypeAlphabet;
    _t1.returnKeyType=UIReturnKeyEmergencyCall;
    _t1.placeholder=@"Enter Number . . . ";
    
    
    _t1.delegate=self; //to pass the ctrl to view ctrl or  hadle the event of text feild we have to write this code and add protocol to loginviewcontroller.h file
    
    [self.view addSubview:_t1];
    
    //code for adding button
    
    _check=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _check.frame=CGRectMake(70, 200, 100, 30);                   //add button to frame
    [_check setTitle:@"Check" forState:UIControlStateNormal];
    [_check setTitle:@"Selected" forState:UIControlStateHighlighted];
    _check.tintColor=[UIColor cyanColor];
    _check.backgroundColor=[UIColor magentaColor];
    
    // handle the events
    //    [_check addTarget:self action:@selector(loginbtnclick) forControlEvents:UIControlEventTouchUpInside]; //as button is special type of class we have addTarget method like deligate , @selector is for select buttons custom method, for control event we have Tuoch Inside method. when we click in buttons inside frame it will execute its method by using view controller i.e self
    
    // for number of buttons if dont want to create seperate method we can use following method
    [_check addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:_check];
    
    
    self.navigationItem.title=@"PickerViewController";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(rtbtnclick)];
    
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
}

-(void)rtbtnclick
{
    
    
    TableViewController *pvc=[[TableViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
    
    
}
    


-(void)btnclick
{

    int number;
    
    BOOL isPrime=YES;
    
    number=[_t1.text intValue];
    
    for (int i=2;i <(number-1); i++)
        
    {
        if (number % i == 0)
            
        {   isPrime = NO;
            NSLog(@"%i   is Prime number",number);
            break;
            
        }
        NSLog(@"%i   is Not Prime number",number);
        
    }
    
    if (isPrime)
        
    {
        NSLog(@"%i   is Prime number",number);
        
    }
    
    else
        
    {
        NSLog(@"%i   is Not Prime number",number);
        
    }
    
    
    
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
