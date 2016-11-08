//
//  TableViewController.h
//  DataPassToVC
//
//  Created by Felix-ITS 006 on 05/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController


@property(nonatomic,retain)NSMutableArray *mainarray;

@property(nonatomic,retain)UIRefreshControl *refreshControl;

@end
