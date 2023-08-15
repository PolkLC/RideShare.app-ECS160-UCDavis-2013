//
//  RSDriverViewController.m
//  RideShare
//
//  Created by ChrisC on 4/27/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RSDriverViewController.h"
#import "RSDriverMakeRideViewController.h"

@interface RSDriverViewController ()

@end

@implementation RSDriverViewController

@synthesize navController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Driver";
        self.tabBarItem.image = [UIImage imageNamed:@"first.png"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)makeRide:(id)sender {
    RSDriverMakeRideViewController *makeRideVC = [[RSDriverMakeRideViewController alloc]init];
    NSLog(@"pushing");
    [self.navigationController pushViewController:makeRideVC animated:YES];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
