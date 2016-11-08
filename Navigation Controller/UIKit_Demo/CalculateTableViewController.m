//
//  CalculateTableViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 04/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "CalculateTableViewController.h"

@interface CalculateTableViewController ()

@end

@implementation CalculateTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _txt1=[[UITextField alloc]initWithFrame:CGRectMake(10, 50, 150, 30)];
    
    _txt1.borderStyle=UITextBorderStyleRoundedRect;
    
  //  _txt1.keyboardAppearance=UIKeyboardAppearanceDark;
   // _txt1.keyboardType=UIKeyboardTypeNumberPad;
    //_t2.returnKeyType=UIReturnKeyEmergencyCall;
    _txt1.placeholder=@"Enter 1st number . . . ";
   // _txt1.secureTextEntry=YES;
    
    _txt1.delegate=self;
    
    [self.view addSubview:_txt1];
    

    
    
    _txt2=[[UITextField alloc]initWithFrame:CGRectMake(160, 50, 150, 30)];
   
    _txt2.borderStyle=UITextBorderStyleRoundedRect;
    
  //  _txt2.keyboardAppearance=UIKeyboardAppearanceDark;
   // _txt2.keyboardType=UIKeyboardTypeNumberPad;
    //_t2.returnKeyType=UIReturnKeyEmergencyCall;
    _txt2.placeholder=@"Enter 2nd number . . . ";
   // _txt2.secureTextEntry=YES;
    
    _txt2.delegate=self;
    
    [self.view addSubview:_txt2];
    
    
    
    
    
    _btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _btn.frame=CGRectMake(70,100, 100, 30);                   //add button to frame
    [_btn setTitle:@"Show Table" forState:UIControlStateNormal];
    [_btn setTitle:@"Selected" forState:UIControlStateHighlighted];
    _btn.tintColor=[UIColor cyanColor];
    _btn.backgroundColor=[UIColor magentaColor];
    [_btn addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_btn];
   
    
    _table1=[[UITableView alloc]initWithFrame:CGRectMake(10, 150, 300,300) style: UITableViewStylePlain];
    
    _table1.delegate=self;
    
    _table1.dataSource=self;
    
    
    [self.view addSubview:_table1];
    
    
    _resultarray=[[NSMutableArray alloc]init];
    
}

-(void)btnclick
{
    
    [_resultarray removeAllObjects];

    int no1,no2,temp;
    
    no1=[_txt1.text intValue];
    no2=[_txt2.text intValue];
//    no1=[NSString stringWithFormat:_txt1.text];
//    no2=[NSString stringWithFormat:_txt2.text];
//    NSLog(@"%@",no1);
//    NSLog(@"%@",no2);
    for (int i=1; i<=[_txt2.text intValue]; i++) {
       
        temp=[_txt1.text intValue]*i;
     //   NSLog(@"%i",temp);
        
        
        NSString *s1=[[NSString alloc]init];
        
        [_resultarray addObject:[NSString stringWithFormat:@"%d X %d =%d",no1,i,temp]];
         
        
       
        
        // [_resultarray addObject:[NSString stringWithFormat:temp]];
        
       // [_resultarray objectAtIndex:[i]]=[[_txt1.text intValue]@"* %i   =  %i",i,[[_txt1.text intValue]*[_txt2.text intValue]];
        
        //   UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];

       // cell.textLabel.text=[_resultarray objectAtIndex:indexPath.row];
       
        [self.table1 reloadData];
    
    }
    

}

//for adding the cell to table
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    if(indexPath.section==0)
    {
        cell.textLabel.text=[_resultarray objectAtIndex:indexPath.row];
        
    }
    
    
    return cell;
    
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

//to define the

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return _resultarray.count;
    
}

//for adding the cell to table
/*-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
    if(indexPath.section==0)
    {
        cell.textLabel.text=[_colorarray objectAtIndex:indexPath.row];
        
    }
    else
    {
        cell.textLabel.text=[_langarray objectAtIndex:indexPath.row];
    }
    
    //    cell.imageView.image=[UIImage imageNamed:@"kk"];     //for adding the image ,it name & details use this code
    //    cell.textLabel.text=@"Table View Lable";
    //    cell.detailTextLabel.text=@"Detailed Text Lable";
    //    return cell;
    
    
    return cell;
    
}
*/



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
