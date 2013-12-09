//
//  main.m
//  singleInstance
//
//  Created by 叶进 on 13-12-9.
//  Copyright (c) 2013年 EUMLab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EUMInstance.h"

int main(int argc, const char * argv[])
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    EUMInstance *ins = [EUMInstance instanceOf];
    EUMInstance *ins3 = [EUMInstance instanceOf];
    ins3.name = @"king";
    
    EUMInstance *autoIns = [[[EUMInstance alloc] init] autorelease];
    
    [ins release];
    [NSThread sleepForTimeInterval:10];
    // release后内存并没有立即回收，此处依然可以访问属性
    NSLog(@"\r\n1:%@\r\n2:%@", ins.name, ins3.name);
    NSLog(@"\r\n1:%@", autoIns.name);
    
    [pool drain];
    
    @autoreleasepool {
        
        EUMInstance *ins1 = [EUMInstance instanceOf];
        
        // 此处发生异常 内存已被释放之后
        NSLog(@"\r\n1:%@", ins1.name);
                
        NSLog(@"Hello, World!");
        
        
    }
    return 0;
}

