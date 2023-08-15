//
//  RSDriverMakeRideViewController.h
//  RideShare
//
//  Created by ChrisC on 5/15/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"

@interface RSDriverMakeRideViewController : UIViewController

@property (strong, nonatomic) IBOutlet TPKeyboardAvoidingScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UIButton *submitButton;
@property (strong, nonatomic) IBOutlet UIButton *cancelButton;

@end
