//
//  BrowserViewController.h
//  MyFirstApp
//
//  Created by rsingh26 on 06/10/21.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/Webkit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BrowserViewController : NSViewController

@property (weak) IBOutlet WKWebView *browser;

@end

NS_ASSUME_NONNULL_END
