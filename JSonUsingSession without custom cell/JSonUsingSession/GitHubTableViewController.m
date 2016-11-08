//
//  GitHubTableViewController.m
//  JSonUsingSession
//
//  Created by Felix-ITS 012 on 30/08/16.
//  Copyright © 2016 Felix-ITS-KK. All rights reserved.
//

#import "GitHubTableViewController.h"
#import "committer.h"

@interface GitHubTableViewController ()

@end

@implementation GitHubTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    _committerarray=[[NSMutableArray alloc]init]; //for final data storage
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];  //register class method for tableview
    
    NSString *url=@"https://api.github.com/repos/hadley/ggplot2/commits";  //given JSON URL
    
    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];   //request to server for data using url
    
    NSURLSessionConfiguration *configuration=[NSURLSessionConfiguration defaultSessionConfiguration];  //Select/Set configuration for session from 3 types
    
    NSURLSession *session=[NSURLSession sessionWithConfiguration:configuration];  //session for parsing
    
    NSURLSessionDataTask *task1=[session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {      //start the session datatask
    
        
        NSArray *resultarray=[NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];  //get the data from server/json. as outer data object is array we created array.
        
        for(NSDictionary *tempdic in resultarray)  //next objects are multiple dictionary  so we use for
        {
            NSDictionary *commitdic=[tempdic objectForKey:@"commit"];  //access dictionary for commit
            
            NSDictionary *committerdic=[commitdic objectForKey:@"committer"];//access dictionary for committer
            
            committer *obj=[[committer alloc]init];  //create object for accessing the committer data
            obj.name=[committerdic objectForKey:@"name"];  //object.property
            obj.email=[committerdic objectForKey:@"email"];
            obj.date=[committerdic objectForKey:@"date"];
            
            [_committerarray addObject:obj];  //add object in final array
        }
        
        [self.tableView reloadData];  //reload data after every loop
    }];
                                  
    [task1 resume];  //resume the task

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
    return _committerarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell=[cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"]; //select cell style
    
    committer *temp=[_committerarray objectAtIndex:indexPath.row];  //get object from array and store in temporary object
    cell.textLabel.text=temp.name;
    cell.detailTextLabel.text=[NSString stringWithFormat:@"%@  %@",temp.email,temp.date]; //combine string for display.

    return cell;
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
