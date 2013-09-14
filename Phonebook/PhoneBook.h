#import<Foundation/Foundation.h>

@interface PhoneBook: NSObject
{
	NSMutableArray *arr;
	NSString *owner;
}

@property (retain) NSString *owner;

-(void)initial;

-(void)addEntry:(id)obj;

-(void)delEntry:(id)obj;

-(void)listAll;

-(int)countAll;

-(int)searchWithName:(NSString *)nm;

@end	
