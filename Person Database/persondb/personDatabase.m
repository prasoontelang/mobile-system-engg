//
//  personDatabase.m
//  persondb
//
//  Created by PESIT College on 10/09/13.
//  Copyright (c) 2013 Education. All rights reserved.
//

#import "personDatabase.h"
#import "personInfo.h"

@implementation personDatabase

static personDatabase *database;

+(personDatabase *)database{
    if(database == nil){
        database = [[personDatabase alloc]init];
    }
    return database;
        
}

-(id)init{
    self = [super init];
    if (self){
        NSString *sqliteDB = [[NSBundle mainBundle]pathForResource:@"person" ofType:@"sqlite3"];
        
        if (sqlite3_open([sqliteDB UTF8String], &database)!= SQLITE_OK){
            NSLog(@"Failed to open database");
        }
    }
    return self;
}


-(NSArray *)getAllPersons{
    NSMutableArray *returnArray = [[NSMutableArray alloc]init];
    
    NSString *query = @"SELECT * FROM person";
    sqlite3_stmt *statement;
    
    if(sqlite3_prepare_v2(database, [query UTF8String], -1, &statement, nil)== SQLITE_OK){
        while(sqlite3_step(statement)==SQLITE_ROW){
            int uniqueId = sqlite3_column_int(statement, 0);
            char *nameChars = (char *)sqlite3_column_text(statement, 1);
            char *addressChars = (char *)sqlite3_column_text(statement, 2);
            NSString *name = [[NSString alloc]initWithUTF8String:nameChars];
            NSString *address = [[NSString alloc]initWithUTF8String:addressChars];
            
            personInfo *info = [[personInfo alloc]initWithUniqueId:uniqueId name:name address:address];
            
            [returnArray addObject:info];
        }
        sqlite3_finalize(statement);
    }
    return returnArray;
    sqlite3_close(database);
    
}

@end
