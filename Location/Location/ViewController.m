//
//  ViewController.m
//  Location
//
//  Created by Felix-ITS 012 on 07/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

//Note: add two keys in info.plist to access the location
//1:NSLocationWhenInUseUsageDescription
//2:NSLocationAlwaysUsageDescription

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    _manager=[[CLLocationManager alloc]init];
    _manager.delegate=self;
    
    if([self.manager respondsToSelector:@selector(requestWhenInUseAuthorization)])
    {
        [self.manager requestWhenInUseAuthorization];
    
    }
    
    [self.manager startUpdatingLocation];
    
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    
    _map.mapType=MKMapTypeHybrid;
    
    [self.view addSubview:_map];
    
    _geocoder=[[CLGeocoder alloc]init];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *mylocation=[locations lastObject];
    
 //   NSLog(@"%f     %f ",mylocation.coordinate.latitude,mylocation.coordinate.longitude);
    
    

    //for hardcoding name
 //   p1.title=@"MyLocation";
 //   p1.subtitle=@"On Map";
    
    
    //for reverse geo coding
    
    [self.geocoder reverseGeocodeLocation:mylocation completionHandler:^(NSArray * placemarks, NSError * _Nullable error) {
    
        CLPlacemark *placemark=placemarks[0];
        
        
        MKPointAnnotation *p1=[[MKPointAnnotation alloc]init];
        p1.title=placemark.locality;
        p1.subtitle=placemark.country;
        
        CLLocationCoordinate2D loc;
        loc.latitude=mylocation.coordinate.latitude;
        loc.longitude=mylocation.coordinate.longitude;
        
        p1.coordinate=loc;
        
        [_map addAnnotation:p1];
        
        [_geocoder geocodeAddressString:[NSString stringWithFormat:@"%@,%@,%@,%@",placemark.postalCode,placemark.name,placemark.locality,placemark.country] completionHandler:^(NSArray * placemarks, NSError * error) {
        
            for(CLPlacemark *aplacemark in placemarks)
            {
            
            //process the placemark
                
                NSString *latdest1=[NSString stringWithFormat:@"%.4f",aplacemark.location.coordinate.latitude];
            
                NSString *longdest1=[NSString stringWithFormat:@"%.4f",aplacemark.location.coordinate.longitude];
                
                NSLog(@"--Latitude:%@  Longitude:%@ ",latdest1,longdest1);
                
            }
            
        }];
        
        
    }];

}

//-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
//{
//    UITouch *touch=[touches anyObject];
//    
//    CGPoint mypoint=[touch locationInView:self.map];
//    
//    CLLocationCoordinate2D loc1;
//    loc1.latitude=mypoint.coordinate.latitude;
//    loc1.longitude=mypoint.coordinate.longitude;
//
//    
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
