//
//  CallViewController.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 27.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "CallViewController.h"
#import "iPhoneXMPPAppDelegate.h"

@interface CallViewController ()

@end

@implementation CallViewController

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

- (IBAction)decline:(id)sender {
    iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate sendDecline];
}

- (IBAction)accept:(id)sender {
    iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate sendAccept];}
@end
