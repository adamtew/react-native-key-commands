#import "KeyCommandEvent.h"

@implementation KeyCommandEvent
{
  bool hasListeners;
}

RCT_EXPORT_MODULE();

-(void)startObserving {
    hasListeners = YES;
}

-(void)stopObserving {
    hasListeners = NO;
}

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"KeyCommandEvent"];
}

- (void)calendarEventReminderReceived:(NSNotification *)notification
{
  if (hasListeners) {
    [self sendEventWithName:@"KeyCommandEvent"  body:@"name"];
  }
}

@end
