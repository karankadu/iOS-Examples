//
//  TableViewController.h
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 29/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,retain)UITableView *table1;

@property(nonatomic,retain)NSMutableArray *colorarray,*langarray;

//@property(nonatomic,retain)UIImageView *container;
//
//@property(nonatomic,retain)UIImage *img;


@end
