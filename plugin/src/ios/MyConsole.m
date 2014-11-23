#import <Cordova/CDV.h>
#import "MyConsole.h"

@implementation MyConsole

-(void)log:(CDVInvokedUrlCommand*)command
{
	NSString* message = [command argumentAtIndex:0];

	NSLog(message);

	// Respond to JavaScript with OK.
	[self.commandDelegate
		sendPluginResult:[CDVPluginResult resultWithStatus:CDVCommandStatus_OK]
		callbackId:command.callbackId];
}
@end