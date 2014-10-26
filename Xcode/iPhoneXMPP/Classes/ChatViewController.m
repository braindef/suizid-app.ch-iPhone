//
//  ChatViewController.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 24.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "ChatViewController.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)endChat:(id)sender {
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)sendMessage:(id)sender {
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Connecting"
                                                        message:@"sending message"
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                              
                                              otherButtonTitles:nil];
    [alertView show];}

@synthesize message;

@end
