//
//  ViewController.m
//  NSOperation
//
//  Created by Felix-ITS 012 on 12/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _queue=[[NSOperationQueue alloc]init];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    NSString *imagepath=@"http://7606-presscdn-0-74.pagely.netdna-cdn.com/wp-content/uploads/2016/03/Dubai-Photos-Images-Oicture-Dubai-Landmarks-800x600.jpg";
    
    NSURL *url=[NSURL URLWithString:imagepath];
    
    [_indicator startAnimating];
    
    
    NSBlockOperation *op1=[NSBlockOperation blockOperationWithBlock:^{
    
        NSData *data=[NSData dataWithContentsOfURL:url];
        
        UIImage *img=[UIImage imageWithData:data];
        
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
        
            _imageview.image=img;
            
            [_indicator stopAnimating];
            
        }];  //block 2 ends here
    
    }]; //block 1 ends here
    
    [_queue addOperation:op1];
    
}
@end
