//
//  PersonModel.h
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PersonModel : NSObject

@property (strong, nonatomic) NSString *personName;
@property (strong, nonatomic) NSString *personEmail;
@property (strong, nonatomic) NSString *personPhone;

@end

NS_ASSUME_NONNULL_END
