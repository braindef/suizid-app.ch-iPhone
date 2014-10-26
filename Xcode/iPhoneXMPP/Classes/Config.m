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

static NSString *managementUser=@"management@ns3.ignored.ch";

+ (NSString*)username { return managementUser; }
+ (void)setUsername: (NSString*)newManagementUser { managementUser = newManagementUser; }

@end
