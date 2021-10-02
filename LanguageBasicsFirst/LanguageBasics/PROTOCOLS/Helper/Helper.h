//
//  Helper.h
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
    Protocol Names
        - ...Delegate
        - ...Datasource
        - ...able
 */
@protocol HelperDelegate <NSObject>

-(void) doSomething;

@end

@interface Helper : NSObject

/// id - Is a pointer to any Objective-C class object
/// The property has type pointer to any objective C class that adopts the HelperDelegate protocol
@property (strong, nonatomic) id<HelperDelegate> delegate;


-(void) performGivenTask;

@end

NS_ASSUME_NONNULL_END
