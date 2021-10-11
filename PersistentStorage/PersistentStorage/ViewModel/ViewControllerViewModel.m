//
//  ViewControllerViewModel.m
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import "ViewControllerViewModel.h"

@implementation ViewControllerViewModel

@synthesize name, email, phone;

-(void) saveData {
    PersonModel *newInfo = [[PersonModel alloc] init];
    newInfo.personName = self.name;
    newInfo.personEmail = self.email;
    newInfo.personPhone = self.phone;

    [[DataModelController shared] addResponse:newInfo];
}

-(NSArray *) fetchData {
    NSArray *personModels = [[DataModelController shared] fetchAllResponses];
    
    /// Return an array of string
    NSMutableArray *response = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < personModels.count; i++) {
        PersonModel *value = [personModels objectAtIndex:i];
        NSString *stringValue = [[NSString alloc] initWithFormat:@"Name: %@\n Email: %@\n Phone: %@\n\n", value.personName, value.personEmail, value.personPhone];
        [response addObject: stringValue];
    }
    return response;
}

@end
