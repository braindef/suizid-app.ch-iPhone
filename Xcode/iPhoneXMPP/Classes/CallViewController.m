//
//  CallViewController.m
//  iPhoneXMPP
//
//  Created by Marc Landolt jun. on 27.10.14.
//  Copyright (c) 2014 XMPPFramework. All rights reserved.
//

#import "CallViewController.h"
#import "ChatViewController.h"
#import "iPhoneXMPPAppDelegate.h"
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>
@interface CallViewController ()

@end

@implementation CallViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //working
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"ino" ofType:@"wav"]];

    //SystemSoundID mRing;
    //AudioServicesCreateSystemSoundID((__bridge CFURLRef)url, &mRing);
    //AudioServicesPlaySystemSound(mRing);
    
    //only working when not in background :(
    //NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"ringtone" ofType:@"mp3"]];
    //self.audioPlayer = [[AVAudioPlayer alloc]initWithContentsOfURL:url error:nil] ;
    //self.audioPlayer.numberOfLoops = 3;
    
    //[[AVAudioSession sharedInstance]setCategory:AVAudioSessionCategoryPlayback error: nil];
    //[[AVAudioSession sharedInstance]setActive:YES error:nil];
    //[[UIApplication sharedApplication]beginReceivingRemoteControlEvents];
    
    //[self.audioPlayer play];


    
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
    [self dismissViewControllerAnimated:YES completion:NULL];
}

- (IBAction)accept:(id)sender {
    iPhoneXMPPAppDelegate *appDelegate = (iPhoneXMPPAppDelegate *)[[UIApplication sharedApplication]delegate];
    [appDelegate sendAccept];
    [self dismissViewControllerAnimated:YES completion:NULL];
    
    
    
    //ChatViewController *cvc = [[ChatViewController alloc]init];
    ChatViewController *cvc = appDelegate.chatViewController;
    
    [[appDelegate navigationController]pushViewController:cvc animated:true ];
}
@end
