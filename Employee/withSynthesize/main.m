#import <Foundation/Foundation.h>
#import "main.h"
int main (int argc, const char * argv[])
{
NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
Emp *myEmp = [[Emp alloc]init];
NSNumber *empId=[NSNumber numberWithInt:125];
[myEmp setEmpId:empId];
[myEmp setName:@"Aayush" andDept:@"ISE"];
NSLog(@"Employee Details %@ %@ %@",[myEmp name],[myEmp dept],[myEmp empId]);
[myEmp release];
[pool drain];
return 0;
  
}

