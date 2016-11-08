//
//  ViewController.m
//  TouchScreen
//
//  Created by Felix-ITS 012 on 10/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _lbl.userInteractionEnabled=YES;
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapclick)];
    
    tap.numberOfTapsRequired=2;
    [_lbl addGestureRecognizer:tap];
    
    
    _btn.userInteractionEnabled=YES;
    
    UILongPressGestureRecognizer *longpress=[[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longpress)];
                                 
        longpress.minimumPressDuration=2;
                                 [_btn addGestureRecognizer:longpress];
   
    //_imgarrray=[[NSMutableArray alloc]initWithObjects:@"1",@"2",@"3", nil];
    
    _imageview.userInteractionEnabled=YES;
    
    _s1=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s1.direction=UISwipeGestureRecognizerDirectionLeft;
    
    
    _s2=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s2.direction=UISwipeGestureRecognizerDirectionRight;
    
    
    _s3=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s3.direction=UISwipeGestureRecognizerDirectionUp;
    
    
    _s4=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipe:)];
    _s4.direction=UISwipeGestureRecognizerDirectionDown;
    
    
    [_imageview addGestureRecognizer:_s1];
    [_imageview addGestureRecognizer:_s2];
    [_imageview addGestureRecognizer:_s3];
    [_imageview addGestureRecognizer:_s4];
    
}
-(void)swipe:(UISwipeGestureRecognizer *)sender
{
    //UISwipeGestureRecognizer *temp=(UISwipeGestureRecognizer *)sender;
    //temp.direction
    
    if (sender==_s1)
        _imageview.image=[UIImage imageNamed:@"1"];
    
    else if(sender==_s2)
        _imageview.image=[UIImage imageNamed:@"2"];
    else if(sender==_s3)
        _imageview.image=[UIImage imageNamed:@"3"];
    else
        _imageview.image=[UIImage imageNamed:@"4"];

}
                                 
-(void)tapclick
{

    self.view.backgroundColor=[UIColor magentaColor];
    
}

-(void)longpress
{
self.view.backgroundColor=[UIColor redColor];
}
//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touchpoints=[touches anyObject];
//    
//    CGPoint points=[touchpoints locationInView:self.view];
//    
//    NSLog(@"Start at: %f       %f",points.x,points.y);
//    
//    if (points.x<50)
//        self.view.backgroundColor=[UIColor redColor];
//    else if(points.x>50 && points.x<150)
//        self.view.backgroundColor=[UIColor yellowColor];
//    else
//        self.view.backgroundColor=[UIColor magentaColor];
//
//}
//
//-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    
//    UITouch *touchpoints=[touches anyObject];
//    
//    CGPoint points=[touchpoints locationInView:self.view];
//    
//    NSLog(@"Moves at: %f       %f",points.x,points.y);
//
//}
//
//-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//
//    
//    UITouch *touchpoints=[touches anyObject];
//    
//    CGPoint points=[touchpoints locationInView:self.view];
//    
//    NSLog(@"End at: %f       %f",points.x,points.y);
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
