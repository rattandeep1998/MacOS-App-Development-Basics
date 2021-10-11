//
//  ViewControllerViewModel.h
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import <Foundation/Foundation.h>
#import "PersonModel.h"
#import "DataModelController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewControllerViewModel : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *email;
@property (strong, nonatomic) NSString *phone;

-(void) saveData;
-(NSArray *) fetchData;

@end

NS_ASSUME_NONNULL_END
