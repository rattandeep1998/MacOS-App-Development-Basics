//
//  PersistentStoreController.m
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import "PersistentStoreController.h"

static PersistentStoreController *privateRef = nil;

NSString * const plistFile = @"contactInfo.plist";

const int nameKey = 0;
const int emailKey = 1;
const int phoneKey = 2;

@implementation PersistentStoreController

# pragma mark - Singleton
+(PersistentStoreController *) shared {
    if (privateRef == nil) {
        privateRef = [[PersistentStoreController alloc] init];
    }
    
    return privateRef;
}

-(void) insert:(PersonModel *) newPerson {
    /// Get the path to the documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true);
    
    NSString *documentDirectory = paths.firstObject;
    
    /// Get path of plist file
    NSString *plistpath = [documentDirectory stringByAppendingPathComponent:plistFile];
    
    NSLog(@"Plist file location: %@", plistpath);
    
    /// Store Data
    NSMutableDictionary *dict = nil;
    
    /// Check if plist file exists
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if([fileManager fileExistsAtPath:plistpath]) {
        dict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistpath];
    } else {
        dict = [[NSMutableDictionary alloc] initWithCapacity:1];
    }
    
    /// Prepare data to wriite
    NSArray *payload = [NSArray arrayWithObjects:newPerson.personName, newPerson.personEmail, newPerson.personPhone, nil];
    [dict setValue:payload forKey:newPerson.personName];
    
    /// Write to plist file
    [dict writeToFile:plistpath atomically:true];
}

-(NSArray *) fetchPersons {
    /// Get the path to the documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, true);
    
    NSString *documentDirectory = paths.firstObject;
    
    /// Get path of plist file
    NSString *plistpath = [documentDirectory stringByAppendingPathComponent:plistFile];
    
    NSLog(@"Plist file location: %@", plistpath);
    
    /// Store Data
    NSMutableDictionary *dict = nil;
    
    /// Prepare Response
    NSMutableArray *response = [[NSMutableArray alloc] init];
    
    /// Check if plist file exists
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    if([fileManager fileExistsAtPath:plistpath]) {
        dict = [[NSMutableDictionary alloc] initWithContentsOfFile:plistpath];
        
        NSArray *keys = dict.allKeys;
        
        for(int i = 0; i < keys.count ; i++) {
            NSArray *entry = [dict objectForKey:[keys objectAtIndex:i]];
            
            PersonModel *value = [[PersonModel alloc] init];
            
            value.personName = [entry objectAtIndex:nameKey];
            value.personEmail = [entry objectAtIndex:emailKey];
            value.personPhone = [entry objectAtIndex:phoneKey];
            
            [response addObject:value];
        }
        
    } else {
        NSLog(@"File Empty");
    }
    
    return response;
}

@end
