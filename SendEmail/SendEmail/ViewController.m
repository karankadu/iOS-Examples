//
//  ViewController.m
//  SendEmail
//
//  Created by apple on 24/09/16.
//  Copyright (c) 2016 KK. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:[NSArray arrayWithObject:@"100"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)sendSMS:(id)sender {
    
    MFMessageComposeViewController *controller=[[MFMessageComposeViewController alloc]init];
    
    if([MFMessageComposeViewController canSendText])
    {
        controller.body=@"Hi . . .";
        controller.recipients=[NSArray arrayWithObjects:@"+91-111-222-3333",@"+91-333-444-5555", nil];
        
        controller.messageComposeDelegate=self;
        [self presentViewController:controller animated:YES
                         completion:nil];
    
    }
    
}

- (IBAction)sendEmail:(id)sender {
    
    NSString *emailTitle=@"Test Email";
    NSString *messegeBody=@"iOS is best";
    NSArray *toRecipents=[NSArray arrayWithObject:@"karan.p.kadu@gmail.com"];
    
    MFMailComposeViewController *mc=[[MFMailComposeViewController alloc]init];
   
    mc.mailComposeDelegate=self;
    
    [mc setSubject:emailTitle];
    [mc setMessageBody:messegeBody isHTML:NO];
    [mc setToRecipients:toRecipents];
    
    [self presentViewController:mc animated:YES completion:NULL];
    
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result
{

    [self dismissViewControllerAnimated:YES completion:nil];
    
if(result == MessageComposeResultCancelled)
    NSLog(@"Message Cancelled");
 else if(result == MessageComposeResultSent)
     NSLog(@"Message Sent");
    else
        NSLog(@"Message Sending Failed");
}

-(void)mailComposeViewController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result
{

    switch (result) {
        case MFMailComposeResultSent:
            NSLog(@"Mail Sent");
            break;
       case MFMailComposeResultCancelled:
            NSLog(@"Mail Cancelled");
        
       case MFMailComposeResultSaved:
            NSLog(@"Mail Saved");
            
        case MFMailComposeResultFailed:
            NSLog(@"Mail Sending Failed");
        default:
            break;
    }


}

@end
