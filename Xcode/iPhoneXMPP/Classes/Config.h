//
//  Config.h
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 25.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Config : NSObject

+ (NSString *): servername;
+ (NSString *): serverBotJid;

+ (NSString *): managementUser;
+ (NSString *): managementPassword;

+ (NSString *): username;
+ (NSString *): password;

+ (NSString *): chatPartner;

+ (NSString *): supporter;
+ (NSString *): helpSeeker;

+ bool: isSupporter;
+ bool: ishelpSeeker;

+ bool: isAvailable;
+ bool: isRinging;
@end
