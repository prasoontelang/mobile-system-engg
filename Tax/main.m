#import <Foundation/Foundation.h>
#import "Bill.h"
#import "CalcTax.h"

int main(int argc, char* argv[])
{	
	Bill *bill=[[Bill alloc]init];
	//allocating bill type
	CalcTax *tax=[[CalcTax alloc]init];
	//calcTax object creation
	int ch, amt;
	NSLog(@"Select the Bill Type\n");
	NSLog(@"1.Finished goods 2.Grocery\n");
	scanf("%d", &ch);
	[bill setBillType:ch];
	//setting billtype member of bill object
	NSLog(@"Enter the bill amount\n");
	scanf("%d",&amt);
	[bill setBillAmt:amt];
	//setting bill amount member of bill object bill.m
	[tax CalcTaxonBill: bill];
	//evaluating tax and setting the respective members
	[bill print];
   //printing bill amount stored in bill object
	[bill release];
	[tax release];
	return 0;
}