//
//  PrefsPaneVC.m
//  UserDefaultsDemo
//
//  Created by rsingh26 on 11/10/21.
//

#import "PrefsPaneVC.h"

@interface PrefsPaneVC ()

@end

@implementation PrefsPaneVC

@synthesize intField, floatField, floatLabel, boolField;

-(void) viewWillAppear {
    [super viewWillAppear];
    
    intField.stringValue = [NSString stringWithFormat:@"%d",[prefManager getIntegerValue]];
    
    floatField.floatValue = [prefManager getFloatValue];
    floatLabel.stringValue = [NSString stringWithFormat:@"%f",[prefManager getFloatValue]];
    boolField.state = [prefManager getBOOLValue];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    prefManager = [[AppPerferenceManager alloc] init];
}

- (IBAction)saveTapped:(id)sender {
    [prefManager setIntegerValue:[intField.stringValue intValue]];
    
    [prefManager setFloatValue: floatField.floatValue];
    [prefManager setBOOLValue: boolField.state];
}

- (IBAction)sliderValueChanged:(NSSlider *)sender {
    floatLabel.stringValue = [NSString stringWithFormat:@"%f",sender.floatValue];
}
@end
