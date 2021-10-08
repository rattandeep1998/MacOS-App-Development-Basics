//
//  ViewController.h
//  ConcurrencyDemo
//
//  Created by rsingh26 on 08/10/21.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
#pragma mark - GCD

    dispatch_queue_global_t globalQueue;

    dispatch_queue_t customSerialQueue;

    dispatch_queue_t customConcurrentQueue;
    
#pragma mark - Operation Queue
    NSOperationQueue *appQueue;
    NSBlockOperation *theOperation;
    NSBlockOperation *operation;

}



@property (weak) IBOutlet NSButton *spawnThreadsClicked;
@property (weak) IBOutlet NSButton *dispatchOnGCDClicked;
@property (weak) IBOutlet NSButton *scheduleOperationsClicked;

- (IBAction)spawnThread:(NSButton *)sender;

- (IBAction)dispatchOnGCD:(NSButton *)sender;
- (IBAction)scheduleOperations:(id)sender;
@end

