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
    [self.keyboardHight setConstant:100.0f];
    [message becomeFirstResponder];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
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


- (void)keyboardWillShow:(NSNotification *)notification {
    NSDictionary *info = [notification userInfo];
    NSValue *kbFrame = [info objectForKey:UIKeyboardFrameEndUserInfoKey];
    CGRect keyboardFrame = [kbFrame CGRectValue];
    
    CGFloat height = keyboardFrame.size.height;
    
    self.keyboardHight.constant = -height;
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"keyboarWillShow"
                                                        message:@"keyboard will show"
                                                       delegate:nil
                                              cancelButtonTitle:@"Ok"
                                              otherButtonTitles:nil];
    [alertView show];
}

- (void)keyboardWillHide:(NSNotification *)notification {
    self.keyboardHight = 0; 
}




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
