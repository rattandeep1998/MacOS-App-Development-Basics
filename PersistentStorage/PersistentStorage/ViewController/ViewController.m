//
//  ViewController.m
//  PersistentStorage
//
//  Created by rsingh26 on 08/10/21.
//

#import "ViewController.h"

@implementation ViewController

@synthesize nameField, emailField, phoneField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    viewModel = [[ViewControllerViewModel alloc] init];
}

-(void) establishBindings {
    NSObjectController *controller = [[NSObjectController alloc] init];
    [controller bind:@"contentObject" toObject:self withKeyPath:@"viewModel" options:nil];
    
    [nameField bind:@"value" toObject:controller withKeyPath:@"selection.name" options:nil];
    [emailField bind:@"value" toObject:controller withKeyPath:@"selection.email" options:nil];
    [phoneField bind:@"value" toObject:controller withKeyPath:@"selection.phone" options:nil];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


- (IBAction)fetchClicked:(NSButton *)sender {
    NSArray *responses = [viewModel fetchData];
    
    NSString *str = @"";
    
    for(int i = 0; i < responses.count; i++) {
        str = [str stringByAppendingString:[responses objectAtIndex:i]];
    }
    
    NSLog(@"%@", str);
}

- (IBAction)saveClicked:(NSButton *)sender {
    [viewModel saveData];
}
@end
