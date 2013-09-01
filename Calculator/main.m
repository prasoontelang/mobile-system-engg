#import <Foundation/Foundation.h>
#import "util.h"

int main (int argc, const char * argv[])
{
	int num1, num2;
    int returnVal;

    arithmetic* var = [[arithmetic alloc]init];
    NSLog(@"Enter first number: ");
    returnVal = scanf("%d", &num1);
    NSLog(@"Enter second number: ");
    returnVal = scanf("%d", &num2);
    [var setFirst : num1];
    [var setSecond : num2];
    [var add];
    [var sub];
    [var mul];
    [var div];
    [var release];

    return 0;
}

