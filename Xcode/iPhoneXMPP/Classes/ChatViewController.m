//
//  ChatViewController.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 24.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "ChatViewController.h"
#import "iPhoneXMPPAppDelegate.h"

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
    
    NSString* input = message.text;
    


    self.chatTextView.text=[NSString stringWithFormat:@"%@\n%@", self.chatTextView.text, input];

    iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate sendChatMessage:input];
    
}



@synthesize message;

@end
