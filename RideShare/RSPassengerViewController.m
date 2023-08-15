//
//  RideShareSecondViewController.m
//  RideShare
//
//  Created by ChrisC on 4/27/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RSPassengerViewController.h"

@interface RSPassengerViewController ()

@end

@implementation RSPassengerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Passenger";//NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
