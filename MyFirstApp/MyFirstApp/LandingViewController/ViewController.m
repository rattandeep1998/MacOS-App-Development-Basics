//
//  ViewController.m
//  MyFirstApp
//
//  Created by rsingh26 on 05/10/21.
//

#import "ViewController.h"

@implementation ViewController
@synthesize headingTextField, helloMessage, messageText;

- (void)viewDidLoad {
    [super viewDidLoad];
    /// Commenting this for time being, since it conflicting with view without constraints.
//    [self createDescriptionLabel];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark - FUNCTIONS
-(void) createDescriptionLabel {
    // Create a View
    NSRect labelFrame = NSRectFromCGRect(CGRectMake(150, 300, 200, 50));
    desclabel = [[NSTextView alloc] initWithFrame:labelFrame];
    
    desclabel.string = @"Description Label";
    desclabel.alignment = NSTextAlignmentCenter;
    desclabel.backgroundColor = [NSColor clearColor];
    
    [self.view addSubview:desclabel];
}

- (IBAction)themeSelectorTapped:(NSButton *)sender {
    switch (sender.tag) {
        case 0:
            NSLog(@"Theme 1 selected: %ld, tag: %ld", sender.state, (long)sender.tag);
            break;
        case 1:
            NSLog(@"Theme 2 selected: %ld, tag: %ld", sender.state, (long)sender.tag);
            break;
        default:
            break;
    }
}

- (IBAction)sendOptionChoose:(NSButton *)sender {
    switch (sender.tag) {
        case 0:
            NSLog(@"%ld, tag: %ld", sender.state, (long)sender.tag);
            break;
        case 1:
            NSLog(@"%ld, tag: %ld", sender.state, (long)sender.tag);
            break;
        default:
            break;
    }
}

- (IBAction)increaseFontSizeTapped:(NSButton *)sender {
    self.headingTextField.font = [NSFont fontWithName:@"Marker felt" size:self.headingTextField.font.pointSize + 1];
}

- (IBAction)decreaseFontSizeTapped:(id)sender {
    self.headingTextField.font = [NSFont fontWithName:@"Marker felt" size:self.headingTextField.font.pointSize - 1];
}

- (IBAction)buttonTapped:(NSButton *)sender {
    if (helloMessage.stringValue.length <= 0) {
        /// Error
        NSAlert *alert = [[NSAlert alloc] init];
        alert.messageText = @"Error";
        alert.informativeText = @"Please make sure to add some Hello message !";
        [alert addButtonWithTitle:@"OK"];
        [alert beginSheetModalForWindow:[NSApp keyWindow] completionHandler:nil];
    } else {
        messageText = helloMessage.stringValue;
        NSLog(@"Hello Text: %@", messageText);
    }
}


@end
