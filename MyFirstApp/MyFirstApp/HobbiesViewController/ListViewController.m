//
//  ListViewController.m
//  MyFirstApp
//
//  Created by rsingh26 on 06/10/21.
//

#import "ListViewController.h"

@interface ListViewController ()

@end

@implementation ListViewController
@synthesize table, tableData;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
    
    [self loadData];
    [self prepareTable];
}

#pragma mark - Table Preparation Methods

-(void) prepareTable {
    self.table.delegate = self;
    self.table.dataSource = self;
}

-(void) loadData {
    self.tableData = [[NSMutableArray alloc] init];
    [self.tableData addObject:@"Playing"];
    [self.tableData addObject:@"Coding"];
    [self.tableData addObject:@"Dancing"];
    [self.tableData addObject:@"Swimming"];
}

#pragma mark - NSTableViewDataSource

-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView {
    return self.tableData.count;
}

#pragma mark - NSTableViewDelegate

-(nullable NSView *) tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *columnId = tableColumn.identifier;
    
    NSTableCellView *cellToShow = [tableView makeViewWithIdentifier:columnId owner:self];
    
    if ([columnId isEqualToString:@"informationIdentifier"]) {
        cellToShow.textField.stringValue = tableData[row];
    }
    
    return cellToShow;
}

@end
