//
//  ViewController.h
//  Location
//
//  Created by Felix-ITS 012 on 07/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>

@property(nonatomic,retain)CLLocationManager *manager;

@property(nonatomic,retain)MKMapView *map;

@property(nonatomic,retain)CLGeocoder *geocoder;


@end

