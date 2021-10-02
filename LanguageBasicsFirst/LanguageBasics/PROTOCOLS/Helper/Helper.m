//
//  Helper.m
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import "Helper.h"

@implementation Helper

@synthesize delegate;

-(void) performGivenTask {
    /// Perform some tasks like network operations
    if(delegate != nil ) {
        [delegate doSomething];
    }
}

@end
