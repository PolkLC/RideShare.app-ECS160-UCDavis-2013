//
//  RSLoginViewController.h
//  RideShare
//
//  Created by ChrisC on 5/15/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"
#import "AFNetworking.h"

@interface RSLoginViewController : UIViewController

@property (nonatomic, strong) IBOutlet TPKeyboardAvoidingScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UILabel *titleBar;

@property (strong, nonatomic) IBOutlet UITextField *loginEmail;
@property (strong, nonatomic) IBOutlet UITextField *loginPassword;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;

@property (strong, nonatomic) IBOutlet UITextField *registerName;
@property (strong, nonatomic) IBOutlet UITextField *registerEmail;
@property (strong, nonatomic) IBOutlet UITextField *registerPassword;
@property (strong, nonatomic) IBOutlet UIButton *registerButton;

@end
