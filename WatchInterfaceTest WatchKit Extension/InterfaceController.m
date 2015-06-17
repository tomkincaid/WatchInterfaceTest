//
//  InterfaceController.m
//  WatchInterfaceTest WatchKit Extension
//
//  Created by Thomas Kincaid on 6/16/15.
//  Copyright (c) 2015 Tom's Apps, LLC. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController


- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
}

- (void)willActivate {
    [super willActivate];
    NSDate *now = [[NSDate alloc] init];
    NSDictionary *time = @{@"time":[NSString stringWithFormat:@"%f",[now timeIntervalSince1970]]};
    NSArray *contexts = [[NSArray alloc] initWithObjects:time,time,nil];
    NSArray *names = [[NSArray alloc] initWithObjects:@"page",@"page",nil];
    [WKInterfaceController reloadRootControllersWithNames:names contexts:contexts];
}

- (void)didDeactivate {
    [super didDeactivate];
}

@end



