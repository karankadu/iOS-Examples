//
//  ViewController.h
//  Map
//
//  Created by Felix-ITS 012 on 06/09/16.
//  Copyright © 2016 Felix-ITs-KK. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ViewController : UIViewController<MKMapViewDelegate>

@property(nonatomic,retain)MKMapView *map;

@property(nonatomic,retain)UIButton *button;

@end

