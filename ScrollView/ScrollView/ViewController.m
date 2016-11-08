//
//  ViewController.m
//  ScrollView
//
//  Created by Felix-ITS 012 on 11/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    _lbl=[[UILabel alloc]initWithFrame:CGRectMake(560, 120, 100, 50)];
    _lbl.text=@"Lable";
    _lbl.backgroundColor=[UIColor magentaColor];
    
    _scroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 10, 320, 548)]; //this must be equal to size os screen or less not greater
    _scroll.backgroundColor=[UIColor orangeColor];
    _scroll.contentSize=CGSizeMake(640, 1400);
    
    [self.view addSubview:_scroll];
    [self.scroll addSubview:_lbl]; //we have to add lbl in scroll view to display in  scroll
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
