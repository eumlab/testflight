//
//  EUMInstance.h
//  singleInstance
//
//  Created by 叶进 on 13-12-9.
//  Copyright (c) 2013年 EUMLab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EUMInstance : NSObject{
    NSString *name;
}
@property (nonatomic, retain) NSString *name;

+(EUMInstance*)instanceOf;


@end
