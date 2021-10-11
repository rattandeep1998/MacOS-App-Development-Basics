//
//  DataModelController.m
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import "DataModelController.h"

static DataModelController *privateReference;

@implementation DataModelController

+(DataModelController *) shared {
    if(privateReference == nil) {
        privateReference = [[DataModelController alloc] init];
    }
    
    return privateReference;
}

-(instancetype) init {
    if ([super init]) {
        dbHandle = [PersistentStoreController shared];
    }
    return self;
}

-(void) addResponse: (PersonModel *) response {
    [dbHandle insert:response];
}

-(NSArray *) fetchAllResponses {
    return [dbHandle fetchPersons];
}

@end
