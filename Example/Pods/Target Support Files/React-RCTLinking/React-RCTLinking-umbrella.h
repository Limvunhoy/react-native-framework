#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RCTLinkingManager.h"
#import "RCTLinkingPlugins.h"

FOUNDATION_EXPORT double RCTLinkingVersionNumber;
FOUNDATION_EXPORT const unsigned char RCTLinkingVersionString[];

