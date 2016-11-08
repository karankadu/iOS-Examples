//
//  ViewController.m
//  PropertyList-using template
//
//  Created by Felix-ITS 012 on 23/08/16.
//  Copyright © 2016 Felix-ITS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // In this program we have to use template for creating plist:  create as follows: new file- ios- resources- select plist save with name
    //create dictionary using expand as we want
    
    NSURL *filepath=[[NSBundle mainBundle]URLForResource:@"StudentInfo" withExtension:@"plist"];  //search the  file in bundle
    
    NSMutableDictionary *dictionary=[[NSMutableDictionary alloc]initWithContentsOfURL:filepath];     //crearte dictionary object for printing the dictionary
    
    NSLog(@"%@",dictionary);
    
    NSArray *phonearray=[NSArray arrayWithObjects:@123,@456,@678, nil];
    
    NSMutableDictionary *s2=[[NSMutableDictionary alloc]init];
    
    [s2 setObject:@2 forKey:@"rollno"];
    [s2 setValue:@"Prasad" forKey:@"name"];
    [s2 setValue:phonearray forKey:@"phoneno"];
    
    [dictionary setValue:s2 forKey:@"s2"];
    
    [dictionary writeToURL:filepath atomically:YES];  //add dictionary in url
    
    NSLog(@"%@",dictionary);  //print dictionary
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
