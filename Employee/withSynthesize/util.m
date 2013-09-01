#import "main.h"
@implementation Emp
@synthesize name,dept,empId;

-(void)setName:(NSString *)newName andDept:(NSString *)newDate
{
[self setName:newName];
[self setDept:newDept];
}

@end
