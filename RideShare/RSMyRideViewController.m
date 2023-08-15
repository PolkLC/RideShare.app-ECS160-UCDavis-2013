//
//  RideShareFirstViewController.m
//  RideShare
//
//  Created by ChrisC on 4/27/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RSMyRideViewController.h"

@interface RSMyRideViewController ()
@property (strong, nonatomic) IBOutlet UINavigationBar *navBar;

@end

@implementation RSMyRideViewController
@synthesize myRidesTV;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"My Rides";//NSLocalizedString(@"First", @"First");
        self.tabBarItem.image = [UIImage imageNamed:@"first"];
    }
    return self;
}
							
- (void)viewDidLoad
{
    [super viewDidLoad];
	
    myRidesTV = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - TableView Data Source
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2; // pending, confirmed
}
-(NSString*)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return @"Confirmed";
        case 1:
            return @"Pending";
        default:
            return @"Error";
    }
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    switch (section) {
        case 0:
            return 1;
        case 1:
            return 1;
        default:
            return 0;
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    switch (indexPath.section) {
        case 0:
            [cell.imageView setContentMode:UIViewContentModeScaleAspectFit];
            [cell.imageView setImage:[UIImage imageNamed:@"questionmark.png"]];
            break;
            
        default:
            break;
    }
    
    return cell;
}

#pragma mark - TableView Delegate

@end
