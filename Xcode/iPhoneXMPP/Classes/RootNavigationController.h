//
//  RootNavigationController.h
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 24.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ChatViewController.h"

@class SettingsViewController;
@class ChatViewController;

@interface RootNavigationController : UINavigationController

@property ChatViewController *chatViewController;
@property SettingsViewController *settingsViewController;



- (IBAction)needHelpChat:(id)sender;

@end
