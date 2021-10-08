//
//  ViewController.m
//  ConcurrencyDemo
//
//  Created by rsingh26 on 08/10/21.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDispatchQueues];
    [self setupQueues];
}


- (IBAction)scheduleOperations:(id)sender {
    [self scheduleOperations];
}

- (IBAction)dispatchOnGCD:(NSButton *)sender {
    [self dispatchTasks];
}

- (IBAction)spawnThread:(NSButton *)sender {
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            [self spawnThreadWithID:(j*10 + i*10)];
        }
    }
}


#pragma mark - THREADS

-(void) threadTask {
    NSLog(@"Performing thread task on %@", [NSThread currentThread]);
}

-(void) threadName {
    NSLog(@"Performing thread task on thread named: %@", [NSThread currentThread].name);
}

-(void) spawnThreadWithID: (int) ID {
    /// Create new thread and start
    NSThread *myThread = [[NSThread alloc] initWithTarget:self selector:@selector(threadName) object:nil];
    [myThread setName:[NSString stringWithFormat:@"Thread-%d", ID]];
    [myThread start];
    
    /// Run on existing thread
    [self performSelector:@selector(threadTask) onThread:[NSThread mainThread] withObject:nil waitUntilDone:false];
}

#pragma mark - GCD

-(void) setupDispatchQueues {
    
    globalQueue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0);
    
    customSerialQueue = dispatch_queue_create("com.intuit.serialQueue", DISPATCH_QUEUE_SERIAL);
    
    customConcurrentQueue = dispatch_queue_create("com.intuit.concurrentQueue", DISPATCH_QUEUE_CONCURRENT);
}

-(void) dispatchTasks {
    // Global queue
    dispatch_async(globalQueue, ^() {
        NSLog(@"Async task on global queue");
    });
    
    // Global queue
    dispatch_async(customSerialQueue, ^() {
        NSLog(@"Async task on serial queue");
    });
    
    dispatch_sync(customSerialQueue, ^() {
        NSLog(@"Sync task on serial queue");
    });
    
    dispatch_async(customConcurrentQueue, ^() {
        NSLog(@"Async task on concurrent queue");
    });
    
    dispatch_async(dispatch_get_main_queue(), ^() {
        NSLog(@"Async task on main queue");
    });
}

#pragma mark - Operation Queues

-(void) setupQueues {
    appQueue = [[NSOperationQueue alloc] init];
}

-(void) myTaskMethod:(int) taskNumber {
    NSLog(@"Executing task %d", taskNumber);
}

-(void) scheduleOperations {
    /// Weak reference to self to break cyclic reference
    __weak ViewController *weakSelf = self;
    
    theOperation = [[NSBlockOperation alloc] init];
    [theOperation addExecutionBlock:^() {
            NSLog(@"Beginning operation block %d", rand());
    }];
    
    operation = [[NSBlockOperation alloc] init];
    [operation addDependency:theOperation];
    [operation addExecutionBlock:^{
            [weakSelf myTaskMethod:rand()];
    }];
    
    [appQueue addOperations:[NSArray arrayWithObjects:theOperation, operation, nil] waitUntilFinished:false];
}

@end
