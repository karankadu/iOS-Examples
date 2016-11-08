//
//  ViewController.m
//  UserDefaults
//
//  Created by Felix-ITS 012 on 25/08/16.
//  Copyright © 2016 Felix-ITS-KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSUserDefaults *user=[NSUserDefaults standardUserDefaults];
    
    NSLog(@"%@      %@       %li",[user objectForKey:@"name"],[user objectForKey:@"addr"],(long)[user integerForKey:@"score"]);  //values before setting
    
    [user setValue:@"Karan" forKey:@"name"];
    [user setValue:@"Pune" forKey:@"addr"];
    [user setInteger:1000 forKey:@"score"];
    
    
    NSLog(@"%@      %@       %li",[user objectForKey:@"name"],[user objectForKey:@"addr"],(long)[user integerForKey:@"score"]);  //values after the setting
    
    [user synchronize];   //only one vc can access at one time i.e:syncronisation
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
