//
//  TableViewController.m
//  JSONSession
//


#import "TableViewController.h"
#import "Committer.h"
#import "DisplayViewController.h"
#import "AFNetworking/AFNetworking.h"
#import "AFNetworking/AFHTTPSessionManager.h"


@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _commiterarray=[[NSMutableArray alloc]init];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    NSURL *URL = [NSURL URLWithString:@"https://api.github.com/repos/hadley/ggplot2/commits"];
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:URL.absoluteString parameters:nil progress:nil success:^(NSURLSessionTask *task, id responseObject) {
   
        
        for (NSDictionary *tempdic in responseObject) {
            
            NSDictionary *commitdic = [tempdic objectForKey:@"commit"];
            NSDictionary *committerdic = [commitdic objectForKey:@"committer"];
            Committer *obj = [[Committer alloc]init];
            obj.name=[committerdic objectForKey:@"name"];
            obj.email = [committerdic objectForKey:@"email"];
            obj.date=[committerdic objectForKey:@"date"];
            
            [_commiterarray addObject:obj];
            
        }
        
        [self.tableView reloadData];
        
        
    } failure:^(NSURLSessionTask *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];

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
    return _commiterarray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    cell = [cell initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    
    Committer *temp = [_commiterarray objectAtIndex:indexPath.row];
    cell.textLabel.text =temp.name;
    
    cell.detailTextLabel.text= [NSString stringWithFormat:@"%@   %@",temp.email,temp.date];
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:@"display" sender:self];
    
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"display"]) {
         
         
        DisplayViewController *v = [segue destinationViewController];
        
        NSIndexPath *path = [self.tableView indexPathForSelectedRow];
        
        v.tempcommit = [_commiterarray objectAtIndex:path.row];
    }
    
}


@end
