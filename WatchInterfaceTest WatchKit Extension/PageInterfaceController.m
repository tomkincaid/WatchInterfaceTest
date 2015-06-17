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

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [label setText:[context objectForKey:@"time"]];
}

- (void)willActivate {
    [super willActivate];
}

- (void)didDeactivate {
    [super didDeactivate];
}

@end



