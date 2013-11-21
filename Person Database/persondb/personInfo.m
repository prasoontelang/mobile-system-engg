//
//  personInfo.m
//  persondb
//
//  Created by PESIT College on 10/09/13.
//  Copyright (c) 2013 Education. All rights reserved.
//

#import "personInfo.h"

@implementation personInfo
@synthesize uniqueId,name,address;

-(id) initWithUniqueId:(int)uniqueId name:(NSString *)name address:(NSString *)address{

    if (self = [super init]){
        self.uniqueId = uniqueId;
        self.name = name;
        self.address = address;
    }
    return self;
}

@end
