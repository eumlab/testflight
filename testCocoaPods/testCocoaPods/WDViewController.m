//
//  WDViewController.m
//  testCocoaPods
//
//  Created by 蔡 国 on 13-12-19.
//  Copyright (c) 2013年 蔡 国. All rights reserved.
//

#import "WDViewController.h"
#import "EUMAboutViewController2.h"

@interface WDViewController ()

@end

@implementation WDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    EUMAboutViewController2 *aboutViewController = [EUMAboutViewController2 eumAboutViewController];
    [self.view addSubview:aboutViewController.view];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
