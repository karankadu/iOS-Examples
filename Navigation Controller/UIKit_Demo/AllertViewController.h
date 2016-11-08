//
//  AllertViewController.h
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 01/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AllertViewController : UIViewController<UIAlertViewDelegate,UITableViewDelegate,UITableViewDataSource>

//@property(nonatomic,retain)UILabel *l1;

@property(nonatomic,retain)UIButton *add;

@property(nonatomic,retain)UIAlertView *allert;

@property(nonatomic,retain)NSMutableArray *temp;

@property(nonatomic,retain)UITableView *table1;



@end
