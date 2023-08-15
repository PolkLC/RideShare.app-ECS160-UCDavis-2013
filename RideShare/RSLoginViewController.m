//
//  RSLoginViewController.m
//  RideShare
//
//  Created by ChrisC on 5/15/13.
//  Copyright (c) 2013 Aggle. All rights reserved.
//

#import "RSLoginViewController.h"

@interface RSLoginViewController ()

@end

@implementation RSLoginViewController

@synthesize titleBar, loginButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)login:(id)sender {
    titleBar.text = @"Logging in...";
    
    NSURL *url = [NSURL URLWithString:@"http://phuoc-huynh.com/jay/android_login_api/"
                  ];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    
    AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
        NSLog(@"IP Address: %@\nJSON %@", [JSON valueForKeyPath:@"origin"], JSON);
    } failure:^(NSURLRequest *request, NSHTTPURLResponse *response,
                NSError *error, id JSON) {
        NSLog(@"Request Failure Because %@",[error userInfo]);
    }
                                         ];
    
    [operation start];
    //self.navigationController
    //[self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)register:(id)sender {
    
    titleBar.text = @"Registering...";
    
    NSURL *url = [NSURL URLWithString:@"http://phuoc-huynh.com/jay/android_login_api/"
                  ];
    
    AFHTTPClient *httpClient = [[AFHTTPClient alloc] initWithBaseURL:url];
    
    NSDictionary *params = [NSDictionary dictionaryWithObjectsAndKeys:
                            @"register", @"tag",
                            @"Chris", @"name",
                            @"chriscong7@gmail.com", @"email",
                            @"123", @"password",
                            nil];
    
    NSMutableURLRequest *request = [httpClient multipartFormRequestWithMethod:@"POST" path:@"./" parameters:params constructingBodyWithBlock: ^(id <AFMultipartFormData>formData) {
        //[formData appendPartWithFileData:imageData name:@"portrait" fileName:@"ball.jpg" mimeType:@"image/jpeg"];
    }];
    
    
    AFHTTPRequestOperation *_operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    __weak AFHTTPRequestOperation *operation = _operation;
    
    [operation setCompletionBlock:^{
        NSLog(@"operation %c", [operation hasAcceptableStatusCode]);
        if ([operation hasAcceptableStatusCode]) {
            // should have an activityView here since it kind of lags before displaying "____ exists"
            NSLog(@"success 1");
            NSString *response = [operation responseString];
            
            NSLog(@"hasAcceptableStatusCode: %@",response);
            
            dispatch_sync(dispatch_get_main_queue(),^ {
                /*Utilities *utilities = [[Utilities alloc] init];
                 
                 if([response isEqualToString:@"username exists"]) {
                 [utilities displayErrorMessageWithString:@"Username exists already." forView:self.view];
                 [activityIndicator stopAnimating];
                 } else if([response isEqualToString:@"email exists"]) {
                 [utilities displayErrorMessageWithString:@"Email exists already" forView:self.view];
                 [activityIndicator stopAnimating];
                 } else if([response isEqualToString:@"fail"]) {
                 [utilities displayErrorMessageWithString:@"Registration failed. Please try another time." forView:self.view];
                 [activityIndicator stopAnimating];
                 }*/ if([response isEqualToString:@"success"]) {
                     NSLog(@"success 2");
                     // Push view controller to login screen
                     // use global object for user info
                     /*NSLog(@"pushing home view");
                      
                      dispatch_async(dispatch_get_main_queue(), ^{
                      WelcomeViewController *welcomeViewController = [[self storyboard] instantiateViewControllerWithIdentifier:@"WelcomeViewController"];
                      [self.navigationController pushViewController:welcomeViewController animated:YES];
                      });*/
                 }
            });
        } else {
            NSLog(@"[Error]: (%@ %@) %@", [operation.request HTTPMethod], [[operation.request URL] relativePath], operation.error);
        }
    }];
    [operation start];
    NSLog(@"OPERATION ENDED");
    /*AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request success:^(NSURLRequest *request, NSHTTPURLResponse *response, id JSON) {
     
     NSDictionary *jsonDict = (NSDictionary *) JSON;
     //NSArray *users = [jsonDict objectForKey:@"users"];
     /users enumerateObjectsUsingBlock: ^(id obj, NSUInteger idx, BOOL *stop) {
     NSString *username = [obj objectForKey:@"username"];
     NSLog(@"username: %@", username);
     }];*/
    /*NSLog(@"IP Address: %@\nJSON %@\nDictionary %@", [JSON valueForKeyPath:@"origin"], JSON, jsonDict);
     } failure:^(NSURLRequest *request, NSHTTPURLResponse *response,
     NSError *error, id JSON) {
     NSLog(@"Request Failure Because %@",[error userInfo]);
     }
     ];
     
     [operation start];*/
    //[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
