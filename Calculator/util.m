#import "util.h"

@implementation arithmetic

@synthesize first,second;

-(void)add
{
    NSLog(@"SUM = %d\n",first + second);
}
-(void)sub
{
    NSLog(@"SUB = %d\n",first - second);
}
-(void)mul
{
    NSLog(@"MUL = %d\n",first * second);
}
-(void)div
{
    if (second == 0)
    {
        NSLog(@"Division by 0 error\n");
    }
    else
    {
        NSLog(@"DIV = %lf\n",first / (double) second);
    }
}
@end
