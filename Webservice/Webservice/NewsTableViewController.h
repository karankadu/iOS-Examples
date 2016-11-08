//
//  NewsTableViewController.h
//  Webservice
//
//  Created by apple on 29/08/16.
//  Copyright (c) 2016 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsTableViewController : UITableViewController<NSURLConnectionDataDelegate,NSURLConnectionDelegate>
@property(nonatomic,retain)NSMutableArray *newsarray;
@property(nonatomic,retain)NSMutableData   *mydata;


@end

