//
//  EmployeeTableViewController.m
//  NSOperation
//
//  Created by Felix-ITS 012 on 12/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import "EmployeeTableViewController.h"
#import "employee.h"

@interface EmployeeTableViewController ()

@end

@implementation EmployeeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    employee *e1=[[employee alloc]init];
    e1.empid=@"1";
    e1.empname=@"Karan";
    e1.empimg=@"http://blogs-images.forbes.com/jacobmorgan/files/2015/05/Jacob-Morgan_avatar_1430962685-400x400.jpg";
    
    
    employee *e2=[[employee alloc]init];
    e2.empid=@"2";
    e2.empname=@"Abhishek";
    e2.empimg=@"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQDlK0Mctvf65fDIz4EfCbjad8dRxoBTWyLkkUep0r8udv9qNa2";
   
    _emparray=[[NSMutableArray alloc]initWithObjects:e1,e2,nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return _emparray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell=[cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    
    
    employee *temp=[_emparray objectAtIndex:indexPath.row];
    
    cell.textLabel.text=temp.empname;
    cell.detailTextLabel.text=temp.empid;
    
    NSString *img=temp.empimg;
    NSURL *url=[NSURL URLWithString:img];
    
    dispatch_async(dispatch_get_main_queue(), ^{
    
        NSData *data=[NSData dataWithContentsOfURL:url];
        
        UIImage *i=[UIImage imageWithData:data];
        
    
        cell.imageView.image=i;
        
        [self.tableView reloadData];
    
    });
    
    
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 150;
}
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
