//
//  Common.h
//  Waa_Remote_Control
//
//  Created by FuD on 2014/6/28.
//  Copyright (c) 2014年 FuD. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClientSocket.h"

@interface Common :NSObject{
    
    NSString *ServerIP;
}

@property (retain)NSString *ServerIP;

//@property (retain, nonatomic)ClientSocket *CommonSocket;
//
//-(void)ServerCommunication;
//
//-(void) setThisMessage:(NSString *)thisMessage;

@end