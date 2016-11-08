//
//  PickerViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 27/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "PickerViewController.h"
#import "PrimeViewController.h"

@interface PickerViewController ()

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _picker1=[[UIPickerView alloc]initWithFrame:CGRectMake(0, 50, [UIScreen mainScreen].bounds.size.width, 250)];
    
    _picker1.delegate=self;
    
    _picker1.dataSource=self;
    
    
    [self.view addSubview:_picker1];
    
    
    _colorarray=[[NSMutableArray alloc]initWithObjects:@"Red",@"Green",@"Blue",@"White",@"Orange",@"Magenta",@"Cyan",@"Gray",@"Brown",@"Yellow", nil];
    
    _langarray=[[NSMutableArray alloc]initWithObjects:@"Hindi",@"English",@"Marathi",@"Telgu",@"Sanskrit",@"Tamil", nil];
    
    _lbl2=[[UILabel alloc]initWithFrame:CGRectMake(30, 450, 100, 30)];
    //_lbl2.text=@"Password :";
    // _lbl2.textColor=[UIColor blueColor];
  //  _lbl2.textAlignment=NSTextAlignmentRight;
    
    _lbl2.highlightedTextColor=[UIColor brownColor];
    _lbl2.adjustsFontSizeToFitWidth=YES;
    
    [self.view addSubview:_lbl2];
    
    self.navigationItem.title=@"PickerViewController";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(rtbtnclick)];
    
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
}

-(void)rtbtnclick
{
    
    
     PrimeViewController *pvc=[[PrimeViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
    
    
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{

    return 2;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{

    if(component==0)
        return _colorarray.count;
    else
        return _langarray.count;


}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    if(component==0)
        return [_colorarray objectAtIndex:row];
    else
        return [_langarray objectAtIndex:row];
    
//    if(component==0)
//        return @"Test1";
//    else
//        return @"Test2";
//
//    
//    for(int i=0;i<10;i++)
//    {
//    
//        if(component==i && row==i)
//            return @"Test  %i",i;
//        else
//            return @"Test2";

    
    
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    int row1=[_picker1 selectedRowInComponent:0];
    
    int row2=[_picker1 selectedRowInComponent:1];
    
    _lbl2.text=[NSString stringWithFormat:@"%@    %@",[_colorarray objectAtIndex:row1],[_langarray objectAtIndex:row2]];
    
    if(component==0)
    {
    
        switch (row) {
            case 0:
                self.view.backgroundColor=[UIColor redColor];
                break;
            case 1:
                self.view.backgroundColor=[UIColor greenColor];
                break;
            case 3:
                self.view.backgroundColor=[UIColor blueColor];
                break;
            case 4:
                self.view.backgroundColor=[UIColor whiteColor];
                break;
            case 5:
                self.view.backgroundColor=[UIColor orangeColor];
                break;
            case 6:
                self.view.backgroundColor=[UIColor magentaColor];
                break;
            case 7:
                self.view.backgroundColor=[UIColor cyanColor];
                break;
            case 8:
                self.view.backgroundColor=[UIColor grayColor];
                break;
            case 9:
                self.view.backgroundColor=[UIColor brownColor];
                break;
            case 10:
                self.view.backgroundColor=[UIColor yellowColor];
                break;
            default:
                break;
        }
    
    }
    
    
}

//for desiding the component ht and row ht

-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{


if(component==0)
    return 100;
    else
        return 200;
}


-(CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{

    return 100;

}

-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{

    UISwitch *s=[[UISwitch alloc]init]; //if we wnat add img ,switch,anything in picker view the we have to use this method Ex.Swich in picker view
    return s;

}



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
