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

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)increaseFontSizeTapped:(NSButton *)sender {
    self.headingTextField.font = [NSFont fontWithName:@"Marker felt" size:self.headingTextField.font.pointSize + 1];
}

- (IBAction)decreaseFontSizeTapped:(id)sender {
    self.headingTextField.font = [NSFont fontWithName:@"Marker felt" size:self.headingTextField.font.pointSize - 1];
}

- (IBAction)buttonTapped:(NSButton *)sender {
    messageText = helloMessage.stringValue;
    NSLog(@"Hello Text: %@", messageText);
}


@end
