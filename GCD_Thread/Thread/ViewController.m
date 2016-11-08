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
    
    _queue=dispatch_queue_create("GCD", DISPATCH_QUEUE_CONCURRENT);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)downloadimage:(id)sender {
    
    NSString *imgpath=@"http://www.gettyimages.in/gi-resources/images/Homepage/Hero/US/embed-504165888.jpg"; //as url is https we need to add transport layer security in info.plist
    
    [_indicator startAnimating];
    
    NSURL *url=[NSURL URLWithString:imgpath];
    
    dispatch_async(_queue,^{  //start new thread within our queue
        
        NSData *data=[NSData dataWithContentsOfURL:url];  //as response from server is type of nsdata
        
        UIImage *img=[UIImage imageWithData:data];  //as data contain img
    
        dispatch_async(dispatch_get_main_queue(), ^{ //in GCD we if we have to pass control to main thread we have to create new function for that,but in gcd we have to write block within out secondary thread only so need to write extra function for that. Thats why many devoloper uses GCD over thread
        
            _imageview.image=img;
            [_indicator startAnimating];
        
        });
    
    
    });
    
}

@end
