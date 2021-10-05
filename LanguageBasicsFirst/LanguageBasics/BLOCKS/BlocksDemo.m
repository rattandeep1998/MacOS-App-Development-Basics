//
//  BlocksDemo.m
//  LanguageBasics
//
//  Created by rsingh26 on 05/10/21.
//

#import "BlocksDemo.h"

@implementation BlocksDemo

-(void) blockToFunction:(int (^) (int)) task {
    NSLog(@"Answer is: %d", task(4));
}

@end
