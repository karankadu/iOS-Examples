//
//  ViewController.m
//  Animation
//
//  Created by Karan on 16/10/16.
//  Copyright © 2016 Karan. All rights reserved.
//

#import "ViewController.h"

#define IMAGE_COUNT 16

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSMutableArray *images=[[NSMutableArray alloc]initWithCapacity:IMAGE_COUNT];
    
    int i;
    for (i=1; i<IMAGE_COUNT; i++) {
        
        [images addObject:[UIImage imageNamed:[NSString stringWithFormat:@"%d.png",i]]];
        
    }
    
    
    _imgView.animationImages=[NSArray arrayWithArray:images];
    
//    _imgView.animationImages=[NSArray arrayWithObjects:                         [UIImage imageNamed:@"1.png"],
//                              [UIImage imageNamed:@"2.png"],
//                              [UIImage imageNamed:@"3.png"],
//                              [UIImage imageNamed:@"4.png"],
//                              [UIImage imageNamed:@"5.png"],
//                              [UIImage imageNamed:@"6.png"],
//                              [UIImage imageNamed:@"7.png"],
//                              [UIImage imageNamed:@"8.png"],
//                              [UIImage imageNamed:@"9.png"],
//                              [UIImage imageNamed:@"10.png"],
//                              [UIImage imageNamed:@"11.png"],
//                              [UIImage imageNamed:@"12.png"],
//                              [UIImage imageNamed:@"13.png"],
//                              [UIImage imageNamed:@"14.png"],
//                              [UIImage imageNamed:@"15.png"],
//                              [UIImage imageNamed:@"16.png"],
//                              nil];
    _imgView.animationDuration=3;
  //  [_imgView startAnimating];
    
}

- (IBAction)switch:(id)sender {
    
    if([sender isOn])
    {
        [_imgView startAnimating];
        _lbl.text=@"Stop Animation";
        _lbl.textColor=[UIColor redColor];
    }
    else
    {
        [_imgView stopAnimating];
        _lbl.text=@"Start Animation";
        _lbl.textColor=[UIColor greenColor];
    }
    
    
}

-(BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation==UIInterfaceOrientationLandscapeRight ||
            toInterfaceOrientation==UIInterfaceOrientationLandscapeLeft);
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
