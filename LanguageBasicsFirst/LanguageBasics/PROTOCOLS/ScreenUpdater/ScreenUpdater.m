//
//  ScreenUpdater.m
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import "ScreenUpdater.h"

@implementation ScreenUpdater

-(void) task {
    helperObject = [[Helper alloc] init];
    helperObject.delegate = self;
    
    [helperObject performGivenTask];
}

- (void)doSomething {
    NSLog(@"Screen Updater - Do Something");
}

@end
