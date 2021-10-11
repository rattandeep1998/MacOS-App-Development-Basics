//
//  AppPerferenceManager.m
//  UserDefaultsDemo
//
//  Created by rsingh26 on 11/10/21.
//

#import "AppPerferenceManager.h"

NSString * const intKey = @"int_preference";
NSString * const floatKey = @"float_preference";
NSString * const boolKey = @"bool_preference";


@implementation AppPerferenceManager

-(instancetype) init {
    if([super init]) {
        userDefaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

-(int) getIntegerValue {
    return (int)[userDefaults integerForKey: intKey];
}

-(void) setIntegerValue:(int) newValue {
    [userDefaults setInteger:newValue forKey:intKey];
}

-(float) getFloatValue {
    return (float)[userDefaults floatForKey: floatKey];
}

-(void) setFloatValue:(float) newValue {
    [userDefaults setFloat:newValue forKey:floatKey];
}

-(BOOL) getBOOLValue {
    return (BOOL)[userDefaults boolForKey: boolKey];
}

-(void) setBOOLValue:(BOOL) newValue {
    [userDefaults setBool:newValue forKey:boolKey];
}

@end
