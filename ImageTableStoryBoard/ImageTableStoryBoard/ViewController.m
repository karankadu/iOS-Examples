//
//  ViewController.m
//  ImageTableStoryBoard
//
//  Created by Felix-ITS 012 on 10/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _img.image=[UIImage imageNamed:_temp];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
