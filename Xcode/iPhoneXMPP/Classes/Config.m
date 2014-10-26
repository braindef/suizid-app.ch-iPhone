//
//  Config.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 25.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "Config.h"

@implementation Config
{

}

static NSString *username=nil;
static NSString *password=nil;

static NSString *managementUser=@"management@ns3.ignored.ch";
static NSString *managementPassword=@"password";

static NSString *serverBotJid=@"server@ns3.ignored.ch";

static bool *isSupporter=false;
static bool *isHelpSeeker=false;


+ (NSString*)username { return username; }
+ (void)setUsername: (NSString*)newUsername { username = newUsername; }

+ (NSString*)password { return password; }
+ (void)setPassword: (NSString*)newPassword { password = newPassword; }

+ (NSString *)managementUser { return managementUser; }
+ (void)setManagementUser: (NSString*)newManagementUser { managementUser = newManagementUser; }

+ (NSString *)managementPassword { return managementPassword; }
+ (void)setManagementPassword: (NSString*)newManagementPassword { managementPassword = newManagementPassword; }

+ (NSString *)serverBotJid { return serverBotJid; }
+ (void)setServerBotJid: (NSString*)newServerBotJid { serverBotJid = newServerBotJid; }

+ (BOOL *)isSupporter {return isSupporter; }
+ (void)setIsSupporter: (BOOL*)newIsSupporter { isSupporter = newIsSupporter; }

+ (BOOL *)isHelpSeeker { return isHelpSeeker; }
+ (void)setIsHelpSeeker: (BOOL*)newIsHelpSeeker { isHelpSeeker = newIsHelpSeeker; }

@end


