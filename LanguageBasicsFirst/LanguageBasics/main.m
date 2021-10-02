//
//  main.m
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import <Foundation/Foundation.h>
#import "Car.h"
#import "ScreenUpdater.h"
#import "Car+Car_Performance.h"
#import "RandomClass.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
#pragma mark - Classes, Properties
        Car *myCar = [[Car alloc] init];
        
        int returnValue = [myCar getSpeed];
        
        myCar.carName = @"Honda"; /// Properties - Way to access variable using . operator
        
        NSLog(@"My car name: %@", myCar.carName);
        NSLog(@"Answer %d", returnValue);
        NSLog(@"Hello, World!");
        
#pragma mark - Protocol Example
        ScreenUpdater *screenUpdater = [[ScreenUpdater alloc] init];
        [screenUpdater task];
        
#pragma mark - Categories Example
        [myCar boostAcceleration];
        
        RandomClass *randomObj = [[RandomClass alloc] init];
        
        /// This function `someMethod` is not visible to outside world.
//        [randomObj someMethod];
        
#pragma mark - Blocks
        int (^blockVar)(int) = ^(int arg1) {
            return arg1 * arg1;
        };
        
        NSLog(@"Executing Block: %d", blockVar(2));
        
        NSString* (^intToString)(int) = ^(int arg1) {
            return [NSString stringWithFormat:@"%d", arg1];
        };
        
        NSLog(@"String value of Integer: %@", intToString(10));
        
    }
    return 0;
}
