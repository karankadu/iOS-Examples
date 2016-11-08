//
//  ViewController.h
//  NSOperation
//
//  Created by Felix-ITS 012 on 12/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;

- (IBAction)download:(id)sender;

@property(nonatomic,retain)NSOperationQueue *queue;


@end

