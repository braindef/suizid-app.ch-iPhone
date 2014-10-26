//
//  ChatViewController.h
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 24.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChatViewController : UIViewController

@property (nonatomic,strong) IBOutlet UITextField *message;

- (IBAction)endChat:(id)sender;
- (IBAction)sendMessage:(id)sender;

@end
