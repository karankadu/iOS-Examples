//
//  PickerViewController.h
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 27/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>

@property(nonatomic,retain)UIPickerView *picker1;

@property(nonatomic,retain)NSMutableArray *colorarray,*langarray;

@property(nonatomic,retain)UILabel *lbl2;

@end