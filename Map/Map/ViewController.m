//
//  ViewController.m
//  Map
//
//  Created by Felix-ITS 012 on 06/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _map=[[MKMapView alloc]initWithFrame:[UIScreen mainScreen].bounds];
    _map.mapType=MKMapTypeHybrid;  //for selecting map type
    
    _map.delegate=self;  //confirm delegate files
    
    [self.view addSubview:_map];   //display map on viewcontroller
    
    MKPointAnnotation *point1=[[MKPointAnnotation alloc]init]; //for pin point on map

    
    
    
    point1.title=@"Kothrud";
    point1.subtitle=@"Pune";
    
    
    CLLocationCoordinate2D location;
    
    location.latitude=18.5074;
    location.longitude=73.8077;
    
    point1.coordinate=location;
    
    [_map addAnnotation:point1];
#pragma Add button on pin method1
 //   _button=[UIButton buttonWithType:UIButtonTypeDetailDisclosure];  //code for method1
    
  //  [_button addTarget:self action:@selector(pinbuttonclick) forControlEvents: UIControlEventTouchUpInside];  //code for method1

    
    
    
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin=[[MKPinAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"pin"];
    
    pin.pinTintColor=[UIColor blueColor];
    pin.canShowCallout=YES; //for display the title and subtitle on map
    
 //   pin.rightCalloutAccessoryView=_button;  //code for method1
 
#pragma Add button on pin method2
    
    pin.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];  //code for method2

    
    return pin;
}

#pragma Method for btn on map pin(method2)

- (void)mapView:(MKMapView *)mapView annotationView:(MKAnnotationView *)view calloutAccessoryControlTapped:(UIControl *)control
{
    NSLog(@"Btn click.");

}


//code for method1

//-(void)pinbuttonclick
//{

  //  NSLog(@"Pin Button Click.");
//}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
