//
//  PageInterfaceController.h
//  WatchInterfaceTest
//
//  Created by Thomas Kincaid on 6/16/15.
//  Copyright (c) 2015 Tom's Apps, LLC. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface PageInterfaceController : WKInterfaceController

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *label;

@end
