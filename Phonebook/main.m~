#import<Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] init];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];
	NSLog(@"Setting Prasoon as owner of this book");
	[book setOwner:@"Prasoon"];
	
	[p1 setName:@"Tejas"];
	[p1 setEmail:@"tejasAV@gmail.com"];
	[p1 setNum:901903917];
	
	[p2 setName:@"Utkarsh"];
	[p2 setEmail:@"utkarshag16@gmail.com"];
	[p2 setNum:987654321];
	
	[p3 setName:@"Vivek"];
	[p3 setEmail:@"vivekagarwalla@gmail.com"];
	[p3 setNum:123456789];
	
	//the following functions can be called at runtime
        //to add user phonecards dynamically
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	[book listAll];	
	
	//remove
	NSLog(@"Deleting Utkarsh from the phonecard");
	[book delEntry:p2];
	
	//list all
	[book listAll];
	
	//count
	NSLog(@"Number of Entries: %d\n", [book countAll]);
   
	//Compare
	char name[20];
	NSLog(@"Enter user's name");
	scanf("%s", name);
	NSString *type=[NSString stringWithUTF8String:name];
	int check;
	check = [book searchWithName:type];
	if (check > 0)
	{
	  [book listAll];
	}
	[pool release];
	
	return 0;
}
