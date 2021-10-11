//
//  DataModelController.h
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import <Foundation/Foundation.h>
#import "PersistentStoreController.h"

NS_ASSUME_NONNULL_BEGIN

@interface DataModelController : NSObject {
    PersistentStoreController *dbHandle;
}

+(DataModelController *) shared;

-(void) addResponse: (PersonModel *) response;

-(NSArray *) fetchAllResponses;

@end

NS_ASSUME_NONNULL_END
