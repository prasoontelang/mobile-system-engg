#import <Foundation/Foundation.h>
#import "phonecard.h"
@implementation phonecard
@synthesize name,email,phoneno;

-(void)print
{
	NSLog(@"Name: %@,Email: %@,Phoneno:%d",name,email,phoneno);
}
@end