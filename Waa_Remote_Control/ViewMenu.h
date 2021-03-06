//
//  ViewSelect.h
//  Waa_Remote_Control
//
//  Created by iamcxa on 2014/6/8.
//  Copyright (c) 2014年 iamcxa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@class ViewMenu;

@interface ViewMenu : UIViewController<NSStreamDelegate>

@property (nonatomic,retain) UINavigationController *navigator;
@property (weak, nonatomic) IBOutlet UILabel *labelSocketMsg;
- (IBAction)btnMusic:(id)sender;
- (IBAction)btnVideo:(id)sender;
- (IBAction)btnPowerPoint:(id)sender;
- (IBAction)btnPower:(id)sender;
- (IBAction)btnHelp:(id)sender;

-(void)setSocketMsg:(NSString *)Message;
@end
