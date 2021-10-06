//
//  ListViewController.h
//  MyFirstApp
//
//  Created by rsingh26 on 06/10/21.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@interface ListViewController : NSViewController <NSTableViewDelegate, NSTableViewDataSource>
@property (weak) IBOutlet NSTableView *table;
@property (strong, nonatomic) NSMutableArray *tableData;

@end

NS_ASSUME_NONNULL_END
