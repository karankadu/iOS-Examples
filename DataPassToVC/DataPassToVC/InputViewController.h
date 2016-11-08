//
//  InputViewController.h
//  DataPassToVC
//
//  Created by Felix-ITS 006 on 05/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InputViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txt1;

- (IBAction)btnclick:(id)sender;


@property(nonatomic,retain)NSMutableArray *temparray;



@end
