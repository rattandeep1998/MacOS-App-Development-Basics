//
//  ViewController.m
//  KVCODemo
//
//  Created by rsingh26 on 07/10/21.
//

#import "ViewController.h"

@implementation ViewController

@synthesize slider, valueDisplayLabel;

- (void)viewDidLoad {
    [super viewDidLoad];

    [self prepareModel];
    [self establishBindings];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

-(void) prepareModel {
    model = [[ProjectModel alloc] init];
}

-(void) establishBindings {
    NSObjectController *controller = [[NSObjectController alloc] init];
    
    [controller bind:@"contentObject" toObject:self withKeyPath:@"model" options:nil];
    
    [valueDisplayLabel bind:@"value" toObject:controller withKeyPath:@"selection.selectedValue" options:nil];
    
    [slider bind:@"value" toObject:controller withKeyPath:@"selection.selectedValue" options:nil];
}

@end
