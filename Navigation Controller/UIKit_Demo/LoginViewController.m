//
//  LoginViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 004 on 21/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "LoginViewController.h"
#import "PickerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor orangeColor]; //To color the view on screen
    
   // self.view.backgroundColor=[UIColor colorWithRed:75.0/255.0 green:50.0/255.0 blue:20.0/255.0 alpha:1.0];
    
    _lbl1=[[UILabel alloc]initWithFrame:CGRectMake(30, 100, 100, 30)];
    _lbl1.text=@"UserName :";  //add text to page frame
    _lbl1.textColor=[UIColor blueColor];  //set color to text
  //  _lbl1.textInputMode=
    
    //_lbl.highlightedTextColor=[UIColor redColor];
    
    _lbl1.textAlignment=NSTextAlignmentCenter;   //set allignment to label
    
    [self.view addSubview:_lbl1];        //add label to frame
    
    _lbl2=[[UILabel alloc]initWithFrame:CGRectMake(30, 150, 100, 30)];
    _lbl2.text=@"Password :";
   // _lbl2.textColor=[UIColor blueColor];
    _lbl2.textAlignment=NSTextAlignmentRight;
    _lbl2.highlightedTextColor=[UIColor brownColor];
    _lbl2.adjustsFontSizeToFitWidth=YES;
    
    [self.view addSubview:_lbl2];
    
    //Code for adding the text feild
    
    _t1=[[UITextField alloc]initWithFrame:CGRectMake(150, 100, 150, 30)];
    _t1.borderStyle=UITextBorderStyleRoundedRect;
    
    _t1.keyboardAppearance=UIKeyboardAppearanceDark;
    _t1.keyboardType=UIKeyboardTypeAlphabet;
    _t1.returnKeyType=UIReturnKeyEmergencyCall;
    _t1.placeholder=@"Enter Name . . . ";
    
    
    _t1.delegate=self; //to pass the ctrl to view ctrl or  hadle the event of text feild we have to write this code and add protocol to loginviewcontroller.h file
    
    [self.view addSubview:_t1];
    
    
    _t2=[[UITextField alloc]initWithFrame:CGRectMake(150, 150, 150, 30)];
    _t2.borderStyle=UITextBorderStyleRoundedRect;
    
    _t2.keyboardAppearance=UIKeyboardAppearanceDark;
    _t2.keyboardType=UIKeyboardTypeAlphabet;
    //_t2.returnKeyType=UIReturnKeyEmergencyCall;
    _t2.placeholder=@"Enter Password . . . ";
    _t2.secureTextEntry=YES;
    
    _t2.delegate=self;
    
    [self.view addSubview:_t2];
    
    
    //code for adding button
    
    _loginbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _loginbtn.frame=CGRectMake(70, 200, 100, 30);                   //add button to frame
    [_loginbtn setTitle:@"Login" forState:UIControlStateNormal];
    [_loginbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    _loginbtn.tintColor=[UIColor cyanColor];
    _loginbtn.backgroundColor=[UIColor magentaColor];
    
    // handle the events
//    [_loginbtn addTarget:self action:@selector(loginbtnclick) forControlEvents:UIControlEventTouchUpInside]; //as button is special type of class we have addTarget method like deligate , @selector is for select buttons custom method, for control event we have Tuoch Inside method. when we click in buttons inside frame it will execute its method by using view controller i.e self
 
    // for number of buttons if dont want to create seperate method we can use following method
    [_loginbtn addTarget:self action:@selector(btnclick:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:_loginbtn];
    
    
    
    _cancelbtn=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _cancelbtn.frame=CGRectMake(200, 200, 100, 30);                   //add button to frame
    [_cancelbtn setTitle:@"Cancel" forState:UIControlStateNormal];
    [_cancelbtn setTitle:@"Selected" forState:UIControlStateHighlighted];
    _cancelbtn.tintColor=[UIColor cyanColor];
    _cancelbtn.backgroundColor=[UIColor magentaColor];
    
    // handle the events
 //   [_loginbtn addTarget:self action:@selector(cancelbtnclick) forControlEvents:UIControlEventTouchUpInside]; //as button is special type of class we have addTarget method like deligate , @selector is for select buttons custom method, for control event we have Tuoch Inside method. when we click in buttons inside frame it will execute its method by using view controller i.e self
    
    [self.view addSubview:_cancelbtn];

//code to add slider
    
    _slider1=[[UISlider alloc]initWithFrame:CGRectMake(30, 250, 200, 30)];
    _slider1.minimumTrackTintColor=[UIColor cyanColor];
    _slider1.maximumTrackTintColor=[UIColor magentaColor];
    
    
    _slider1.minimumValue=0;
    _slider1.maximumValue=100;
    
    [_slider1 addTarget:self action:@selector(sliderchange) forControlEvents:UIControlEventValueChanged];
    [_slider1 setValue:30 animated:YES];
    [self.view addSubview:_slider1];
    
    
    //for switch wich can be use as radio button
    
    _switch1=[[UISwitch alloc]initWithFrame:CGRectMake(100, 300, 50, 30)];
    
    
    [_switch1 addTarget:self action:@selector(swichchange) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_switch1];
    
    
    //for segmented class we can create the collection of button,text etc
    
    _segment=[[UISegmentedControl alloc]initWithItems:[NSArray arrayWithObjects:@"Red",@"Green",@"Blue", nil]];
    
    [_segment addTarget:self action:@selector(segmentchange) forControlEvents:UIControlEventValueChanged];
    
    _segment.frame=CGRectMake(40, 350, 250, 50);
    
    [self.view addSubview:_segment];
    
  
    //for adding img to screen & if we want this img to background then move this code to up
    
//    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];  //initilise the container for image
//    
//    _img=[UIImage imageNamed:@"kk"];  //get actual img using uiimage class
//    
//    _container.image=_img;   //assign the img to container
//    
//    [self.view addSubview:_container];
//
    self.navigationItem.title=@"LoginViewController";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(rtbtnclick)];
    
    self.navigationItem.rightBarButtonItem=rbtn;
    

}

-(void)rtbtnclick
{

    
     PickerViewController *pvc=[[PickerViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];


}


//-(void)loginbtnclick
//{
//
//    NSLog(@"Login Sussesfully");
//
//
//}
//
//
//-(void)cancelbtnclick
//{
//
//
//    NSLog(@"Cancel Button Clicked");
//
//
//}
//

-(void)btnclick:(id)sender
{
    if(sender==_loginbtn)
        //NSLog(@"Login btn click");
    {
        PickerViewController *pvc=[[PickerViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
    }
    else
        NSLog(@"Cancel btn click");

}


-(void)sliderchange
{

    _t1.text=[NSString stringWithFormat:@"%f",_slider1.value];
    NSLog(@"%f",_slider1.value);


}


-(void)swichchange
{
    if(-_switch1.on)
    {
    
        self.view.backgroundColor=[UIColor redColor];
    }
    else
    {
        self.view.backgroundColor=[UIColor whiteColor];
    
    }

}

-(void)segmentchange
{

    switch (_segment.selectedSegmentIndex) {
        case 0:
            self.view.backgroundColor=[UIColor redColor];
            break;
            
        case 1:
            self.view.backgroundColor=[UIColor greenColor];
            break;
            
        case 2:
            self.view.backgroundColor=[UIColor blueColor];
            break;
        default:
            NSLog(@"Select correct item");
            break;
    }

}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    NSLog(@"Should Begin");
    return YES;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"Did Begin");
}


-(BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    NSLog(@"Should End");
    return YES;
}

-(void)textFieldDidEndEditing:(UITextField *)textField
{
    NSLog(@"Did END");
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    if(textField==_t1)
        NSLog(@"Return Key Text Feild-1 click");
    else
        NSLog(@"Return Key Text Feild-2 click");
    return YES;
}

//above methods are overwrite for check the text feild events


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
