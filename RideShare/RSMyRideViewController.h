//
//  RideShareFirstViewController.h
//  RideShare
//
//  Created by ChrisC on 4/27/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RSMyRideViewController : UIViewController <UITableViewDataSource, UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UITableViewController *myRidesTV;

@end
