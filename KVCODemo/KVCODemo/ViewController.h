//
//  ViewController.h
//  KVCODemo
//
//  Created by rsingh26 on 07/10/21.
//

#import <Cocoa/Cocoa.h>
#import "ProjectModel.h"

@interface ViewController : NSViewController {
    ProjectModel *model;
}

@property (weak) IBOutlet NSTextField *valueDisplayLabel;

@property (weak) IBOutlet NSSlider *slider;
@end

