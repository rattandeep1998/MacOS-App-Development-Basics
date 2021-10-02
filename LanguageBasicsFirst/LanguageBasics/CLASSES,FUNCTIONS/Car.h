//
//  Car.h
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Car : NSObject {
    /// Member variables
    NSString *carName;
}

/**
    Attributes:
        - Strong / Weak
        - atomic / nonatomic
        - readwrite / readonly
        - assign / retain / copy
 */
@property(strong, nonatomic) NSString *carName;

@property(atomic, readwrite) int carSpeed; /// Member variables are optional, you can directly create properties now.

/// Member function declarations
-(int) getSpeed;
-(void) setSpeed:(int) newSpeed Average:(float) newAverage;
-(void) setCarName:(NSString* ) carname;
@end

NS_ASSUME_NONNULL_END
