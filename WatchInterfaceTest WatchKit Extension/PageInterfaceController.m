//
//  PageInterfaceController.m
//  WatchInterfaceTest
//
//  Created by Thomas Kincaid on 6/16/15.
//  Copyright (c) 2015 Tom's Apps, LLC. All rights reserved.
//

#import "PageInterfaceController.h"

@interface PageInterfaceController ()

@end

@implementation PageInterfaceController

@synthesize label;
@synthesize time;

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    time = [context objectForKey:@"time"];
}

- (void)willActivate {
    [super willActivate];
    NSDate *now = [[NSDate alloc] init];
    double diff = [now timeIntervalSince1970] - [time doubleValue];
    if (diff > 30) {
        NSArray *contexts = [[NSArray alloc] initWithObjects:@"",nil];
        NSArray *names = [[NSArray alloc] initWithObjects:@"main",nil];
        [WKInterfaceController reloadRootControllersWithNames:names contexts:contexts];
    } else {
        [label setText:[NSString stringWithFormat:@"%@",time]];
    }
}

- (void)didDeactivate {
    [super didDeactivate];
}

@end



