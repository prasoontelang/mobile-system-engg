//
//  personDatabase.h
//  persondb
//
//  Created by PESIT College on 10/09/13.
//  Copyright (c) 2013 Education. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "sqlite3.h"

@interface personDatabase : NSObject{
    sqlite3 *database;
    
}
+(personDatabase *)database;

-(NSArray *)getAllPersons;

@end
