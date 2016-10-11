/*
	Bishop Fox - Theos for jailed iOS devices
*/
#import <dlfcn.h>
#include <pthread.h>
#include <errno.h>
#include <objc/message.h>
#import <jspatch/jspatch.h>

/*
 * Constructor
 */
%ctor {
	NSLog(@"[BF] Constructor entry");
    [JPEngine startEngine];
    NSString *sourcePath = [[NSBundle mainBundle] pathForResource:@"main" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
}
