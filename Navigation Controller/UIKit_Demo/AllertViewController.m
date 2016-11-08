//
//  AllertViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 01/08/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "AllertViewController.h"

@interface AllertViewController ()

@end

@implementation AllertViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _add=[UIButton buttonWithType:UIButtonTypeRoundedRect];  //initalisation
    _add.frame=CGRectMake(70, 70, 100, 30);                   //add button to frame
    [_add setTitle:@"ADD" forState:UIControlStateNormal];
    [_add setTitle:@"Selected" forState:UIControlStateHighlighted];
    _add.tintColor=[UIColor cyanColor];
    _add.backgroundColor=[UIColor magentaColor];
    
    // handle the events
    //    [_loginbtn addTarget:self action:@selector(loginbtnclick) forControlEvents:UIControlEventTouchUpInside]; //as button is special type of class we have addTarget method like deligate , @selector is for select buttons custom method, for control event we have Tuoch Inside method. when we click in buttons inside frame it will execute its method by using view controller i.e self
    
    // for number of buttons if dont want to create seperate method we can use following method
    [_add addTarget:self action:@selector(btnclick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:_add];
    
    
    
    _table1=[[UITableView alloc]initWithFrame:CGRectMake(100, 100, 200, 300) style: UITableViewStylePlain];
    
    _table1.delegate=self;
    
    _table1.dataSource=self;
    
    
    [self.view addSubview:_table1];
    
    _temp=[[NSMutableArray alloc]init];    //temp array for storing the allert text input and dispaly it on

    
    [self.table1 registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    

}


-(void)btnclick
{
   
    _allert=[[UIAlertView alloc]initWithTitle:@"Alert" message:@"Enter the Details" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    _allert.alertViewStyle=UIAlertViewStylePlainTextInput;  //to take input from allert as text feild use this method
    
    [_allert show];





}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex==1)
    {
        [_temp addObject:[_allert textFieldAtIndex:0].text];   //to accsess the alert text and assign the text to array
        
        [self.table1 reloadData];  //to dyanamically reload the data of table
    
    }



}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

//to define the

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
        return _temp.count;
    
}

//for adding the cell to table
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    
   
    
        cell.textLabel.text=[_temp objectAtIndex:indexPath.row];
        
    
    return cell;
    
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
