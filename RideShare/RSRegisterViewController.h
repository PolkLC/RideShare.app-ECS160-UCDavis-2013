//
//  RSRegisterViewController.h
//  RideShare
//
//  Created by ChrisC on 5/15/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TPKeyboardAvoidingScrollView.h"

@interface RSRegisterViewController : UIViewController

@property (strong, nonatomic) IBOutlet TPKeyboardAvoidingScrollView *scrollView;

@property (strong, nonatomic) IBOutlet UINavigationBar *titlebar;

@property (strong, nonatomic) IBOutlet UITextField *NameField;
@property (strong, nonatomic) IBOutlet UITextField *EmailField;
@property (strong, nonatomic) IBOutlet UITextField *PasswordField;

@property (strong, nonatomic) IBOutlet UIButton *SubmitButton;

@end