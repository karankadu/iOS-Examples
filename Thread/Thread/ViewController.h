//
//  ViewController.h
//  Thread
//
//  Created by Felix-ITS 012 on 08/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

- (IBAction)downloadimage:(id)sender;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *indicator;
@end

