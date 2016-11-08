//
//  ViewController.m
//  CategoryDemo
//
//  Created by Student-003 on 16/09/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import "ViewController.h"
#import "NSMutableString+CustomeString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableString *str=[[NSMutableString alloc]initWithFormat:@"a1b2c3d4"];
    
    NSLog(@"%@",str);
    
    NSMutableString *output=[str  removechar:str];
    
    NSMutableString *result=[str removenumber:str];
    NSLog(@"%@",output);
     NSLog(@"%@",result);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
