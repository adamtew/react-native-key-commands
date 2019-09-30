#import "KeyCommandManager.h"
#import <React/RCTLog.h>
#import "KeyCommandsView.h"

@implementation KeyCommandManager

RCT_EXPORT_MODULE();

- (UIView *)view {
  return [[KeyCommandsView alloc] init];
}

@end
