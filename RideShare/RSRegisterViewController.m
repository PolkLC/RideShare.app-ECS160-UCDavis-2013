//
//  RSRegisterViewController.m
//  RideShare
//
//  Created by ChrisC on 5/15/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RSRegisterViewController.h"

@interface RSRegisterViewController ()

@end

@implementation RSRegisterViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)submit:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
