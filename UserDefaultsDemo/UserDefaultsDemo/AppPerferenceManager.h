//
//  AppPerferenceManager.h
//  UserDefaultsDemo
//
//  Created by rsingh26 on 11/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppPerferenceManager : NSObject {
    NSUserDefaults * userDefaults;
}

-(int) getIntegerValue;
-(void) setIntegerValue:(int) newValue;

-(float) getFloatValue;
-(void) setFloatValue:(float) newValue;

-(BOOL) getBOOLValue;
-(void) setBOOLValue:(BOOL) newValue;

@end

NS_ASSUME_NONNULL_END
