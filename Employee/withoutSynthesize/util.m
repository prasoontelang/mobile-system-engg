#import <Foundation/Foundation.h>
#import "util.h"

@implementation Employeewo

-(void)setName:(char *)nam
{
    strcpy(name,nam);
}

-(void)setDept:(char *)dep
{
    strcpy(dept,dep);
}

-(void)setIdnum:(int)idno
{
    idnum=idno;
}

-(void)display
{
    NSLog(@"Employee details");
    NSLog(@"Name : %s",name);
    NSLog(@"Dept: %s",dept);
    NSLog(@"ID : %i",idnum);
}

@end