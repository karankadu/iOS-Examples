//
//  LoginViewController.h
//  UIKit_Demo
//
//  Created by Felix-ITS 004 on 21/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UITextFieldDelegate>

@property(nonatomic,retain)UILabel *lbl1,*lbl2;

@property(nonatomic,retain)UITextField *t1,*t2;

@property(nonatomic,retain)UIButton *loginbtn,*cancelbtn;

@property(nonatomic,retain)UISlider *slider1;

@property(nonatomic,retain)UISwitch *switch1;

@property(nonatomic,retain)UISegmentedControl *segment;

//@property(nonatomic,retain)UIImageView *container;
//
//@property(nonatomic,retain)UIImage *img;




@end
