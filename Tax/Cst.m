#import <Foundation/Foundation.h >
#import "TaxProto.h"
#import "Cst.h"

@implementation Cst

-(float)CalTax:(int)amt
{
   float taxAmt = amt * 4 / 100.0 ;
	return taxAmt;
}

@end
