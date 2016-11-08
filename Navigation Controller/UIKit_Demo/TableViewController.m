//
//  TableViewController.m
//  UIKit_Demo
//
//  Created by Felix-ITS 006 on 29/07/16.
//  Copyright © 2016 KK. All rights reserved.
//

#import "TableViewController.h"
#import "DateViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _table1=[[UITableView alloc]initWithFrame:[UIScreen mainScreen].bounds style: UITableViewStyleGrouped];
    
    _table1.delegate=self;
    
    _table1.dataSource=self;
    
    
    
    
    [self.view addSubview:_table1];
    
    _colorarray=[[NSMutableArray alloc]initWithObjects:@"Red",@"Green",@"Blue",@"White",@"Orange",@"Magenta",@"Cyan",@"Gray",@"Brown",@"Yellow", nil];
    
    _langarray=[[NSMutableArray alloc]initWithObjects:@"Hindi",@"English",@"Marathi",@"Telgu",@"Sanskrit",@"Tamil", nil];
    
 
    self.navigationItem.title=@"PickerViewController";
    
    UIBarButtonItem *rbtn=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(rtbtnclick)];
    
    self.navigationItem.rightBarButtonItem=rbtn;
    
    
}

-(void)rtbtnclick
{
    
    
    DateViewController *pvc=[[DateViewController alloc]init];
    
    [self.navigationController pushViewController:pvc animated:YES];
    
    
}

    
    

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if(indexPath.section==0)
    {
        switch (indexPath.row) {
            case 0:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
                
            case 1:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 2:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 3:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 4:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 5:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
                
            case 6:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 7:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 8:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
            case 9:
                NSLog(@" %@ ",[_colorarray objectAtIndex:indexPath.row]);
                break;
                
            default:
                break;
        }
    
    }
    else
        switch (indexPath.row) {
            case 0:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
                
            case 1:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 2:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 3:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 4:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 5:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
                
            case 6:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 7:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 8:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
            case 9:
                NSLog(@" %@ ",[_langarray objectAtIndex:indexPath.row]);
                break;
                
            default:
                break;
        }
    

}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath
{

if(indexPath.section==0)
{
    NSString *temp=[_colorarray objectAtIndex:indexPath.row]; //insted of switch statemnt above method to access the data from row use this method
    NSLog(@"%@",temp);

}
    else
    {
        NSString *temp=[_langarray objectAtIndex:indexPath.row];
        NSLog(@"%@",temp);

    }


}

-(UIImage *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIImageView *img=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"kk"]];
    return img;
    
    //or
    
//    _container=[[UIImageView alloc]initWithFrame:[UIScreen mainScreen].bounds];  //initilise the container for image
//    
//        _img=[UIImage imageNamed:@"kk"];  //get actual img using uiimage class
//    
//        _container.image=_img;   //assign the img to container
//    
//        //[self.view addSubview:_container];

    
    
//    if(section==0)
//        return _container;
//    else
//        return _container;

}

-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    if(section==0)
        return @"Color Array";
    else
        return @"Language array";

}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    if(section==0)
        return @"Color Array";
    else
        return @"Language array";


}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 50;

}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;

}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;

}

//to define the

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    if(section==0)
        return _colorarray.count;
    else
        return _langarray.count;

}

//for adding the cell to table
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
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
