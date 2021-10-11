//
//  ViewController.h
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import <Cocoa/Cocoa.h>
#import "ViewControllerViewModel.h"

@interface ViewController : NSViewController {
    ViewControllerViewModel *viewModel;
}

@property (weak) IBOutlet NSTextField *nameField;

@property (weak) IBOutlet NSTextField *emailField;
@property (weak) IBOutlet NSTextField *phoneField;


- (IBAction)saveClicked:(NSButton *)sender;

- (IBAction)fetchClicked:(NSButton *)sender;
@end

