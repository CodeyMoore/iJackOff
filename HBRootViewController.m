#import "HBRootViewController.h"

@implementation HBRootViewController
- (void) loadView {
	[super loadView];
self.title = @"iJackOff";
self.navigationController.navigationBar.barTintColor = [UIColor blackColor];



    UIWebView *webview = [[UIWebView alloc] init];
webview.frame = self.view.bounds;
webview.scalesPageToFit = true;
    NSString *url=@"http://www.pornhub.com";
    NSURL *nsurl=[NSURL URLWithString:url];
    NSURLRequest *nsrequest=[NSURLRequest requestWithURL:nsurl];
    [webview loadRequest:nsrequest];
    [self.view addSubview:webview];
}
@end
