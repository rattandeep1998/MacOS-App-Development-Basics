//
//  ScreenUpdater.h
//  LanguageBasics
//
//  Created by rsingh26 on 01/10/21.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

NS_ASSUME_NONNULL_BEGIN

@interface ScreenUpdater : NSObject <HelperDelegate> {
    Helper *helperObject;
}
    
-(void) task;

@end

NS_ASSUME_NONNULL_END
