//
//  ViewController.h
//  SendEmail
//
//  Created by apple on 24/09/16.
//  Copyright (c) 2016 KK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface ViewController : UIViewController<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

- (IBAction)sendSMS:(id)sender;

- (IBAction)sendEmail:(id)sender;

@end

