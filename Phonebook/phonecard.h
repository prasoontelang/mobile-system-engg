#import<Foundation/Foundation.h>

@interface phonecard:NSObject
{
	NSString* name;
	NSString* email;
	int phoneno;
}

@property (assign) NSString* name;
@property (assign) NSString* email;
@property int phoneno;

-(void)print;
@end
