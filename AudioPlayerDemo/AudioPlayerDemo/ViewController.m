//
//  ViewController.m
//  AudioPlayerDemo
//
//  Created by Karan on 8/31/16.
//  Copyright © 2016 Karan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSError *error;
    audioplayer=[[AVAudioPlayer alloc]initWithContentsOfURL:[NSURL URLWithString:[[NSBundle mainBundle] pathForResource:@"abc" ofType:@"mp3"]] error:&error];
    
    if(error){
        NSLog(@"Error:%@",[error localizedDescription]);
    }
    else
    {
        [audioplayer prepareToPlay];
    }
    _seekslider.minimumValue=0;
    _seekslider.maximumValue=[audioplayer duration];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(changeslider) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeslider
{
    _seekslider.value=[audioplayer currentTime];
}

- (IBAction)seek:(id)sender
{
    [audioplayer setCurrentTime:_seekslider.value];
}

- (IBAction)chnagevolume:(id)sender
{
    if(audioplayer){
        audioplayer.volume=[(UISlider *)sender value];
    }
}

- (IBAction)btnplayclick:(id)sender
{    
    
    [audioplayer play];
}

- (IBAction)btnstopclick:(id)sender
{
    if(audioplayer)
    {
        [audioplayer stop];
    }
}
@end
