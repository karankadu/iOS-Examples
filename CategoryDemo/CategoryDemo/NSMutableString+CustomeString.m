//
//  NSMutableString+CustomeString.m
//  CategoryDemo
//
//  Created by Student-003 on 16/09/16.
//  Copyright © 2016 Felix-ITs. All rights reserved.
//

#import "NSMutableString+CustomeString.h"

@implementation NSMutableString (CustomeString)


-(NSMutableString *)removenumber:(NSMutableString *)string
{
    NSMutableString *output=[[string componentsSeparatedByCharactersInSet:[NSCharacterSet decimalDigitCharacterSet]]componentsJoinedByString:@""];
    
    return output;
}
-(NSMutableString *)removechar:(NSMutableString *)string
{
    NSMutableString *output=[[string componentsSeparatedByCharactersInSet:[NSCharacterSet letterCharacterSet]]componentsJoinedByString:@""];
    return output;
}
@end
