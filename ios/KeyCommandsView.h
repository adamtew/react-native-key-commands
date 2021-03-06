// Responsible for showing the key commands

#import <React/RCTBridgeModule.h>
#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <React/RCTView.h>
#import "RCTViewManager.h"
#import "RCTAssert.h"
#import "RCTKeyCommands.h"

@interface KeyCommandsView : UIView <RCTBridgeModule>

@property (nonatomic, weak) RCTBridge *bridge;

@end
