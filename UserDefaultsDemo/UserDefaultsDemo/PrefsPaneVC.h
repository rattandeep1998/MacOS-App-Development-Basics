//
//  PrefsPaneVC.h
//  UserDefaultsDemo
//
//  Created by rsingh26 on 11/10/21.
//

#import <Cocoa/Cocoa.h>
#import "AppPerferenceManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface PrefsPaneVC : NSViewController {
    AppPerferenceManager * prefManager;
}

@property (weak) IBOutlet NSTextField *intField;

@property (weak) IBOutlet NSSlider *floatField;

@property (weak) IBOutlet NSTextField *floatLabel;

@property (weak) IBOutlet NSSwitch *boolField;

- (IBAction)sliderValueChanged:(NSSlider *)sender;

- (IBAction)saveTapped:(id)sender;
@end

NS_ASSUME_NONNULL_END
