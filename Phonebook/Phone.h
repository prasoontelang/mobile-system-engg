#import<Foundation/Foundation.h>

@interface Phone: NSObject
{
	NSString* name;
	NSString* email;
	int num;
}

@property (retain) NSString *name;
@property (retain) NSString *email;
@property int num;

-(void)print;

@end