//
//  ViewController.h
//  MyFirstApp
//
//  Created by rsingh26 on 05/10/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController

#pragma mark - IB Outlet

@property (weak) IBOutlet NSTextField *headingTextField;
@property (weak) IBOutlet NSTextField *helloMessage;
@property (strong) NSString *messageText;

#pragma mark - IB Actions

- (IBAction)buttonTapped:(NSButton *)sender;

- (IBAction)decreaseFontSizeTapped:(id)sender;

- (IBAction)increaseFontSizeTapped:(NSButton *)sender;

@end

