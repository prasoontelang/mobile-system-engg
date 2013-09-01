#import <Foundation/Foundation.h>

@interface Employeewo:NSObject
{
    char name[25];
    char dept[5];
    int idnum;
}
-(void)setName:(char *)nam;
-(void)setDept:(char *)dep;
-(void)setIdnum:(int)idno;
-(void)display;
@end