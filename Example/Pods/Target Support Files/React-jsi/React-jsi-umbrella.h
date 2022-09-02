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

#import "decorator.h"
#import "instrumentation.h"
#import "jsi-inl.h"
#import "jsi.cpp"
#import "jsi.h"
#import "JSIDynamic.cpp"
#import "JSIDynamic.h"
#import "jsilib-posix.cpp"
#import "jsilib-windows.cpp"
#import "jsilib.h"
#import "threadsafe.h"
#import "JSCRuntime.cpp"
#import "JSCRuntime.h"

FOUNDATION_EXPORT double jsiVersionNumber;
FOUNDATION_EXPORT const unsigned char jsiVersionString[];

