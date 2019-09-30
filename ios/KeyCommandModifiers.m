#import "KeyCommandModifiers.h"

@implementation KeyCommandModifiers 

RCT_EXPORT_MODULE();

- (NSDictionary *)constantsToExport {
  return @{
    @"ModifierShift": @(UIKeyModifierAlphaShift),
    @"ModifierControl": @(UIKeyModifierControl),
    @"ModifierAlternate": @(UIKeyModifierAlternate),
    @"ModifierCommand": @(UIKeyModifierCommand),
    @"ModifierNumericPad": @(UIKeyModifierNumericPad),
    @"InputUpArrow": UIKeyInputUpArrow,
    @"InputDownArrow": UIKeyInputDownArrow,
    @"InputLeftArrow": UIKeyInputLeftArrow,
    @"InputRightArrow": UIKeyInputRightArrow,
    @"InputEscape": UIKeyInputEscape
  };
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;  // only do this if your module initialization relies on calling UIKit!
}

@end
