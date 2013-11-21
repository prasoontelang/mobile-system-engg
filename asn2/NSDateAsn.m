#import<Foundation/Foundation.h>
#include<stdlib.h>
#include<time.h>

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSTimeInterval interval = 24*60*60, random = 0;
	NSDate *today = [NSDate date];
	NSMutableArray *dates = [[NSMutableArray alloc]init]; //random dates

	//Get today's date
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
    [dateFormat setDateFormat:@"dd-MM-yyyy"];
    NSString *dateToday = [dateFormat stringFromDate:today];
    NSLog(@"Today's date is %@", dateToday);

    //Day after tomorrow's date
    NSDate *dayAfterTomorrow = [[NSDate alloc] initWithTimeIntervalSinceNow:24*60*60*2];
    NSString *dayAfterTomorrowDate = [dateFormat stringFromDate:dayAfterTomorrow];
	NSLog(@"Day after tomorrow's date: %@", dayAfterTomorrowDate);

	//Last thursday's date
	NSCalendar *greg = [[[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar] autorelease];
    NSDateComponents *component = [greg components:NSWeekdayCalendarUnit fromDate:today];
    int weekday = [component weekday];
	if(weekday>5) //check if thursday of this week passed
	{
 		interval = 24*60*60*(weekday-5);
	}
	else
	{
		interval = 24*60*60*(weekday+2); //+2 is for the saturday and friday of last week.
	}
	NSDate *lastThursday = [[NSDate date] addTimeInterval:-interval];
    NSString *lastThursdayDate = [dateFormat stringFromDate:lastThursday];
    NSLog(@"Last Thursday's date: %@",lastThursdayDate);

	//finding earliest date among a given set of dates
	int i=0;
	interval = 24*60*600; 
	NSDate *randomDate = nil;
	NSLog(@"Randomly generated dates: \n");
	for(i=0;i<5;i++)
	{
		random = interval* (rand()%5);
		randomDate = [[NSDate alloc] initWithTimeIntervalSinceNow:random];
		[dates addObject:randomDate];
        NSString *randomDateString = [dateFormat stringFromDate:randomDate];

		NSLog(@"%@", randomDateString);
	}
	NSDate *earliestDate = nil;
	for(id entry in dates)
	{
		if(earliestDate == nil)
		{
			earliestDate = entry;
		}
		else if([earliestDate compare:entry] == NSOrderedDescending)
		{
			earliestDate = entry;
		}
	}
    NSString *earliest = [dateFormat stringFromDate:earliestDate];
	NSLog(@"The earliest date: %@", earliest);


	//finding tenth day of the month given the first day
   
    NSDictionary *days = [NSDictionary dictionaryWithObjectsAndKeys:
	             		    @"sunday", [NSNumber numberWithInteger:1],
	             			@"monday", [NSNumber numberWithInteger:2],
	             			@"tuesday", [NSNumber numberWithInteger:3],
	             			@"wednesday", [NSNumber numberWithInteger:4],
	             			@"thurday", [NSNumber numberWithInteger:5],
	             			@"friday", [NSNumber numberWithInteger:6],
	             			@"saturday", [NSNumber numberWithInteger:7], 
	             		 nil];


	id firstDayOfMonth = [NSNumber numberWithInteger:1];//Assuming 1st day is sunday according to Dictionary assigned
	int tenthDay = ([firstDayOfMonth intValue]+2)%7; //Calculating the value of 10th day to look in dictionary
	id tenthDayOfMonth = [NSNumber numberWithInteger:tenthDay];
	NSLog(@"First day of the month is %@,tenth day is %@",[days objectForKey:firstDayOfMonth],[days objectForKey:tenthDayOfMonth]);

	[pool release];
	return 0;
}

