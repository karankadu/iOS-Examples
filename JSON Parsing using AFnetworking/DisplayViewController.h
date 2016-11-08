//
//  DisplayViewController.h
//  JSONSession
//
//

#import <UIKit/UIKit.h>
#import "Committer.h"

@interface DisplayViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *name;
@property (weak, nonatomic) IBOutlet UILabel *email;
@property (weak, nonatomic) IBOutlet UILabel *date;

@property (weak,nonatomic) Committer *tempcommit;

@end
