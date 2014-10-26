//
//  Config.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 25.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "Config.h"

@implementation Config

static NSString *servername = @"ns3.ignored.ch";
static NSString *serverBotJid = @"server@ns3.ignored.ch";

static NSString *managementUser = @"management@ns3.ignored.ch";
static NSString *managementPassword = @"password";

static NSString *username = nil;
static NSString *password = nil;

static NSString *chatPartner = nil;

static NSString *supporter = nil;
static NSString *helpSeeker = nil;

static bool *isSupporter = false;
static bool *ishelpSeeker = false;

static bool *isAvailable = true;
static bool *isRinging = false;


@end
