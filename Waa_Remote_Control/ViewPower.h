//
//  ViewPower.h
//  Waa_Remote_Control
//
//  Created by iamcxa on 2014/6/27.
//  Copyright (c) 2014年 iamcxa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewPower : UIViewController<NSStreamDelegate>
@property (weak, nonatomic) IBOutlet UILabel *labelSocketMsg;
- (IBAction)btnPCSleep:(id)sender;
- (IBAction)btnPCRest:(id)sender;
- (IBAction)btnPCSOff:(id)sender;
- (IBAction)btnMenu:(id)sender;
- (IBAction)btnHelp:(id)sender;


@end
