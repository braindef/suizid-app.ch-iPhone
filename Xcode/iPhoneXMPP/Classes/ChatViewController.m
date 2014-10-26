//
//  ChatViewController.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 24.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "ChatViewController.h"
#import "iPhoneXMPPAppDelegate.h"
#import "Config.h"

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [message becomeFirstResponder];
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
    if([Config isHelpSeeker])
    {
        iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
        [appDelegate disconnect];
        
        [Config setIsHelpSeeker:false];
        [Config setHasLogin:false];
        [Config setSupporter:nil];
    }
}


- (IBAction)sendMessage:(id)sender {
    
    NSString* input = message.text;
    [self appendToTextView:input sender:@"me"];
    
    [message setText:@""];
    
    //send message to the xmpp service
    iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate sendChatMessage:input];
}


- (void) appendToTextView:(NSString*)text sender:(NSString*)sender
{
    //append
    self.chatTextView.text=[NSString stringWithFormat:@"%@\n%@: %@", self.chatTextView.text, sender, text];
    
    //scroll
    NSRange range = NSMakeRange(self.chatTextView.text.length -1, 1);
    [self.chatTextView scrollRangeToVisible:range];
}

- (IBAction)temp:(id)sender {
}


@synthesize message;

@end
