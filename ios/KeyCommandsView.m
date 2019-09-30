#import "KeyCommandsView.h"

@implementation KeyCommandsView

@synthesize bridge = _bridge;

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(onRegionChange, RCTBubblingEventBlock)

- (BOOL)canBecomeFirstResponder {
    return YES;
}

- (void)emitEvent:(NSString *)eventName
{
        RCTLogInfo(@"inside emitEvent:");
  [_bridge enqueueJSCall:@"RCTDeviceEventEmitter"
                  method:@"emit"
                       args:@[eventName]
                 completion:NULL];
}

RCT_EXPORT_METHOD(registerKeyCommand:(NSString *)eventName input:(NSString *)input flag:(NSString *)flag)
{
    dispatch_async(dispatch_get_main_queue(), ^{
      RCTAssertMainQueue(); 
      [[RCTKeyCommands sharedInstance] registerKeyCommandWithInput:input
                                                     modifierFlags:[flag integerValue]
                                                            action:
      ^(UIKeyCommand *command) {
        [self emitEvent:eventName];
      }];
    });
}

@end
