//
//  CalculateTableViewController.h
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 04/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CalculateTableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)UITextField *txt1,*txt2;

@property(nonatomic,retain)UIButton *btn;


@property(nonatomic,retain)UITableView *table1;

@property(nonatomic,retain)NSMutableArray *resultarray;

@end
