//
//  PersistentStoreController.h
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import <Foundation/Foundation.h>
#import "PersonModel.h"

NS_ASSUME_NONNULL_BEGIN

@interface PersistentStoreController : NSObject

+(PersistentStoreController *) shared;

-(void) insert:(PersonModel *) newPerson;

-(NSArray *) fetchPersons;

@end

NS_ASSUME_NONNULL_END
