//
//  ViewMusic.m
//  Waa_Remote_Control
//
//  Created by iamcxa on 2014/6/27.
//  Copyright (c) 2014年 iamcxa. All rights reserved.
//

#import "ViewMusic.h"

@implementation ViewMusic
- (IBAction)btnMenu:(id)sender {
      [self dismissViewControllerAnimated:YES completion:nil];
}

// 送出訊息時強制設定檔案篩選類型, 確保一定會是對應類型檔案
-(void)socketStartWithFilterType:(NSString *)Msg{
    
    if ([[sysDege fileSelectedList]objectAtIndex:[sysDege fileSelectedRow]]!=nil) {
        [sysDege setSocketTypeFilter:TYPE_CODE_VIDEO];
        [sysDege socketStartWithMessage:Msg];
        
    } else{
        
        [sysDege showAlert:@"請先選擇檔案！"];
        
    }
}

- (IBAction)btnNext:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnBack:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnStop:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnPlayOrPause:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnStartOrEndPlayer:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnMute:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)bntVolumeLower:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

- (IBAction)btnVolumeBigger:(id)sender {
    [self socketStartWithFilterType:@"MRCode_WMP_12"];
    usleep(200000);
}

// 說明選單
- (IBAction)btnHelp:(id)sender {
    [self performSegueWithIdentifier:@"GotoViewHelp" sender:self];
}

// 檔案清單
- (IBAction)btnFileList:(id)sender {
    [sysDege setSocketTypeFilter:TYPE_CODE_MUSIC_TO_FILE_LIST];
    [sysDege socketStartWithMessage:[sysDege MRCode_Show_Music]];
}

-(void)viewDidDisappear:(BOOL)animated{
    [sysDege setLastTimeUsedCmd:nil];
    [sysDege setFileSelectedList:nil];
    [sysDege setFileSelectedRow:0];
}
@end
