//
//  personInfo.h
//  persondb
//
//  Created by PESIT College on 10/09/13.
//  Copyright (c) 2013 Education. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface personInfo : NSObject{
    int uniqueId;
    NSString *name;
    NSString *address;
}
@property(nonatomic,assign)int uniqueId;
@property(nonatomic,strong)NSString *name;
@property(nonatomic,strong)NSString *address;

-(id) initWithUniqueId:(int)uniqueId name:(NSString *)name address:(NSString *)address;

@end
