//
//  BlocksDemo.h
//  LanguageBasics
//
//  Created by rsingh26 on 05/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlocksDemo : NSObject

-(void) blockToFunction:(int (^) (int)) task;

@end

NS_ASSUME_NONNULL_END
