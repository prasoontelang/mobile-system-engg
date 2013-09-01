#import <Foundation/Foundation.h>
#import "util.h"

int main (int argc, const char * argv[])
{
   Employeewo *emwo = [[Employeewo alloc]init];
   [emwo setName : "Prasoon Telang"];
   [emwo setDept : "ISE"];
   [emwo setIdnum : 113];
   [emwo display];
   [emwo release];

   return 0;
}

