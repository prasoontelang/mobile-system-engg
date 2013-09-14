#import <Foundation/Foundation.h >
#import "TaxProto.h"
#import "Vat.h"

@implementation Vat

-(float)CalTax:(int)amt
{
   float taxAmt = amt * 8 / 100.0 ;
	return taxAmt;
}

@end
