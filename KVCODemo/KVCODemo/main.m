//
//  main.m
//  KVCODemo
//
//  Created by rsingh26 on 07/10/21.
//

#import <Cocoa/Cocoa.h>
#import "MyData.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        
        MyData *info = [[MyData alloc] init];
        info.name = @"ABC";
        info.age = 30;
        
#pragma mark - KVC
        
        [info setValue:@"DEF" forKey:@"name"];
        NSLog(@"%@", [info valueForKey:@"name"]);
    }
    return NSApplicationMain(argc, argv);
}
