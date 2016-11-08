//
//  ViewController.m
//  Thread
//
//  Created by Felix-ITS 012 on 08/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadimage:(id)sender {
    
    NSString *imgpath=@"http://assets.barcroftmedia.com.s3-website-eu-west-1.amazonaws.com/assets/images/recent-images-11.jpg"; //as url is https we need to add transport layer security in info.plist
    
    [_indicator startAnimating];
    
    NSURL *url=[NSURL URLWithString:imgpath];
    
    [NSThread detachNewThreadSelector:@selector(download:) toTarget:self withObject:url];
    
}

-(void)download:(NSURL *)imgpath
{
    NSData *data=[NSData dataWithContentsOfURL:imgpath];  //as response from server is type of nsdata
    
    UIImage *img=[UIImage imageWithData:data];  //as data contain img
    
    [self performSelectorOnMainThread:@selector(updateUI:) withObject:img waitUntilDone:YES];  //transfer control to main tread , after task is over

}

-(void)updateUI:(UIImage *)img
{
    _imageview.image=img;
    [_indicator startAnimating];

}

@end
