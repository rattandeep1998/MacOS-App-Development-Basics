//
//  BrowserViewController.m
//  MyFirstApp
//
//  Created by rsingh26 on 06/10/21.
//

#import "BrowserViewController.h"

@interface BrowserViewController ()

@end

@implementation BrowserViewController

- (void) loadBrowserPage {
    NSURL *webPageAddress = [[NSURL alloc] initWithString:@"https://rattandeep1998.github.io/"];
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:webPageAddress];
    
    [self.browser loadRequest: request];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do view setup here.
}

- (void)viewWillAppear {
    [super viewWillAppear];
    // Do view setup here.
    [self loadBrowserPage];
}

@end
