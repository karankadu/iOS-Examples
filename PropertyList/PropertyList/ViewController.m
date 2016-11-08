//
//  ViewController.m
//  PropertyList
//
//  Created by Felix-ITS 012 on 23/08/16.
//  Copyright © 2016 Felix-ITS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *dir= NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);  //find out the path of document directory
    
    
    NSString *dbpath=[NSString stringWithFormat:@"%@/Database.plist",[dir lastObject]];
    
                        //create the database folder at document folder at given path an append at last
    NSLog(@"%@",dbpath);
    
    NSMutableDictionary *mydictionary=[[NSMutableDictionary alloc]initWithContentsOfFile:dbpath];     //create dictionarry on path given by dbpath
    
    if (mydictionary==nil) {
        
        mydictionary=[[NSMutableDictionary alloc]init];  //initialise dictionary for the first time
    }
    
    
    ///////////////// i n s e r t    r e c o r d /////////
    
//    [mydictionary setValue:@"Karan" forKey:@"fname"]; //insert record in dictionary
//    [mydictionary setObject:@"Kadu" forKey:@"lname"];
    
    ///// to add array in dictionary and array conatain multiple dictionary
    
    NSMutableDictionary *s1=[[NSMutableDictionary alloc]init];
    [s1 setValue:@"Karan" forKey:@"fname"];
    [s1 setValue:@"Kadu" forKey:@"lname"];
    [s1 setValue:@1 forKey:@"rollno"];
    [s1 setValue:@"Pune" forKey:@"address"];
   
    NSMutableDictionary *s2=[[NSMutableDictionary alloc]init];
    [s2 setValue:@"Karan" forKey:@"fname"];
    [s2 setValue:@"Kadu" forKey:@"lname"];
    [s2 setValue:@2 forKey:@"rollno"];
    [s2 setValue:@"Pune" forKey:@"address"];
    
    
    
    NSMutableDictionary *s3=[[NSMutableDictionary alloc]init];
    [s3 setValue:@"Karan" forKey:@"fname"];
    [s3 setValue:@"Kadu" forKey:@"lname"];
    [s3 setValue:@3 forKey:@"rollno"];
    [s3 setValue:@"Pune" forKey:@"address"];
    
    NSMutableArray *array=[[NSMutableArray alloc]init];
    [array addObject:s1];
    [array addObject:s2];
    [array addObject:s3];
    
    
    [mydictionary setObject:array forKey:@"StuentInfo"];
    
    [mydictionary writeToFile:dbpath atomically:YES];
    
    
    /////////////////  R e a d  ///////////////////
    
    NSMutableDictionary *result=[[NSMutableDictionary alloc]initWithContentsOfFile:dbpath];
  //  NSLog(@"%@",result);   print direct
    
    NSArray *resultarray=[result objectForKey:@"StudentInfo"];
    
    for (NSDictionary *temp in resultarray) {
        
        NSLog(@"%@",temp);

    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
