//
//  ViewController.h
//  TouchScreen
//
//  Created by Felix-ITS 012 on 10/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *lbl;

@property (weak, nonatomic) IBOutlet UIButton *btn;

@property (weak, nonatomic) IBOutlet UIImageView *imageview;

//@property(nonatomic,retain)NSMutableArray *imgarrray;

@property(nonatomic,retain)UISwipeGestureRecognizer *s1,*s2,*s3,*s4;

@end

