#import <Foundation/Foundation.h>
@interface Emp:NSObject
{
NSString *name;
NSString *dept;
NSNumber *empId;
}
-(void)setName:(NSString *) newName andDept:(NSString *)newDept;
@property(readwrite,retain)NSString *name;
@property(readwrite,retain)NSString *dept;
@property(readwrite,retain)NSNumber *empId;
@end