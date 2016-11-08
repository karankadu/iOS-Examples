//
//  ViewController.h
//  AudioPlayerDemo
//
//  Created by Karan on 8/31/16.
//  Copyright © 2016 Karan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    AVAudioPlayer *audioplayer;
}
@property (weak, nonatomic) IBOutlet UISlider *seekslider;

- (IBAction)seek:(id)sender;
- (IBAction)chnagevolume:(id)sender;
- (IBAction)btnplayclick:(id)sender;
- (IBAction)btnstopclick:(id)sender;

@end

