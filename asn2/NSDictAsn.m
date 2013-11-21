#import<Foundation/Foundation.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDictionary *keyValue = [NSDictionary dictionaryWithObjectsAndKeys:
	             				[NSNumber numberWithInt:10], @"centimeter",
             					[NSNumber numberWithInt:40], @"pound",
             					[NSNumber numberWithInt:50], @"ounce",
            	 				[NSNumber numberWithInt:20], @"kilogram",
								[NSNumber numberWithInt:30], @"yard", 
								[NSNumber numberWithInt:10], @"millimeter",
								[NSNumber numberWithInt:10], @"kiloMeter", 
								[NSNumber numberWithInt:20], @"milligram", 
								[NSNumber numberWithInt:20], @"gram", 
								[NSNumber numberWithInt:10], @"Meter",
							  nil];

    int meterCheck = 0;	//Checks if the key ends with a meter

    for(NSString* key in keyValue)
	{
		if ([key rangeOfString:@"meter" options:NSCaseInsensitiveSearch].location != NSNotFound)
		{  
             if(meterCheck==0) //check condition to print the line only once n only when key ending with meter exists
             {
                 NSLog(@"The dictionary keys which end with meter/Meter are:\n");
             }
             meterCheck=1;
             NSLog(@"Key: %@, Value: %@\n", key, [keyValue objectForKey:key]);
		}
	}
    if(meterCheck==0)
    {
        NSLog(@"No Keys ending with meter found");
    }
   	[pool release];

	return 0;
}