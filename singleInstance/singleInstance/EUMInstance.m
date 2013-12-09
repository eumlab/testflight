//
//  EUMInstance.m
//  singleInstance
//
//  Created by 叶进 on 13-12-9.
//  Copyright (c) 2013年 EUMLab. All rights reserved.
//

#import "EUMInstance.h"

@implementation EUMInstance

@synthesize name;

-(id)init{
    if (self = [super init]) {
       name = @"adaiye";
        }
    return  self;
};

-(void)dealloc{
    [super dealloc];
}

//-(oneway void)release{
//    // nothing
//}

+(EUMInstance*)instanceOf{
    static dispatch_once_t token;
    static EUMInstance* instance;
    
    dispatch_once(&token, ^{
        instance = [[EUMInstance alloc] init];
    });
    
    return instance;
};

@end
