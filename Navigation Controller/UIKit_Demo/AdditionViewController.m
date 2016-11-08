//
//  AdditionViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 28/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "AdditionViewController.h"

@interface AdditionViewController ()

@end

@implementation AdditionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _t1=[[UITextField alloc]initWithFrame:CGRectMake(50, 100, 150, 30)];
    _t1.borderStyle=UITextBorderStyleRoundedRect;
    
    _t1.keyboardAppearance=UIKeyboardAppearanceDark;
 //   _t1.keyboardType=UIKeyboardTypeNumberPad;
   // _t1.returnKeyType=UIReturnKeyEmergencyCall;
    _t1.placeholder=@"Enter 1st number ";
    
    
    _t1.delegate=self; //to pass the ctrl to view ctrl or  hadle the event of text feild we have to write this code and add protocol to loginviewcontroller.h file
    
    [self.view addSubview:_t1];
    
    
    _t2=[[UITextField alloc]initWithFrame:CGRectMake(50, 150, 150, 30)];
    _t2.borderStyle=UITextBorderStyleRoundedRect;
    
    _t2.keyboardAppearance=UIKeyboardAppearanceDark;
 //   _t2.keyboardType=UIKeyboardTypeNumberPad;
    //_t2.returnKeyType=UIReturnKeyEmergencyCall;
    _t2.placeholder=@"Enter 2nd number";
    //_t2.secureTextEntry=YES;
    
    _t2.delegate=self;
    
    [self.view addSubview:_t2];
    
    
    //for segmented class we can create the collection of button,text etc
    
    _segment=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"+",@"-",@"*",@"/",nil]];
    
//    [_segment addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
//    
    _segment.frame=CGRectMake(40, 250, 250, 50);
    
    [self.view addSubview:_segment];
    
    _calculate=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _calculate.frame=CGRectMake(150, 350, 100, 30);                   //add button to frame
    [_calculate setTitle:@"Calculate" forState:UIControlStateNormal];
    [_calculate setTitle:@"Selected" forState:UIControlStateHighlighted];
    _calculate.tintColor=[UIColor cyanColor];
    _calculate.backgroundColor=[UIColor magentaColor];
    
    [_calculate addTarget:self action:@selector(calculation) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_calculate];
    
    _lbl1=[[UILabel alloc]initWithFrame:CGRectMake(150, 400, 100, 30)];
    //_lbl1.text=@"UserName :";  //add text to page frame
    _lbl1.textColor=[UIColor blueColor];  //set color to text
    //  _lbl1.textInputMode=
    
    //_lbl.highlightedTextColor=[UIColor redColor];
    
    _lbl1.textAlignment=NSTextAlignmentCenter;   //set allignment to label
    
    [self.view addSubview:_lbl1];        //add label to frame
    
}

-(void)calculation
{
//
//    int n1,n2,temp;
//    n1=[_t1.text intValue];
//    n2=[_t2.text intValue];

//    NSLog(@"%i",n1);
//    NSLog(@"%i",n2);
//    
    if(_segment.selectedSegmentIndex==0)
    {
   //     temp=n1+n2;
//        //_lbl1.text=[NSString stringWithFormat:@"%d",temp];
        _lbl1.text=[NSString stringWithFormat:@"%d",[_t1.text intValue]+[_t2.text intValue]];
    
    }
    else if(_segment.selectedSegmentIndex==1)
    {
//        temp=0;
//    temp=n1-n2;
//    _lbl1.text=[NSString stringWithFormat:@"%d",temp];
      
        _lbl1.text=[NSString stringWithFormat:@"%d",[_t1.text intValue]-[_t2.text intValue]];
       
    }
    else if( _segment.selectedSegmentIndex==2)
    {
//        temp=0;
//        temp=n1*n2;
//        _lbl1.text=[NSString stringWithFormat:@"%d",temp];
        
        _lbl1.text=[NSString stringWithFormat:@"%d",[_t1.text intValue]*[_t2.text intValue]];

    }
    else
    {
//        temp=0;
//        temp=n1/n2;
//        _lbl1.text=[NSString stringWithFormat:@"%d",temp];
//        
        _lbl1.text=[NSString stringWithFormat:@"%d",[_t1.text intValue]/[_t2.text intValue]];

    }


}


//-(void)segmentchange
//{}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
