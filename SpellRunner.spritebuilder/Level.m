//
//  Level.m
//  SpellRunner
//
//  Created by Toni Chen on 10/14/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Level.h"

@implementation Level
//method body of the factory method to create level instances

+(instancetype)levelWithNum:(int)levelNum;
{
    //find .plist file for this level
    NSString* fileName= [NSString stringWithFormat:@"level%i.plist", levelNum];
    NSString* levelPath = [[[NSBundle mainBundle] resourcePath]
                           stringByAppendingPathComponent:fileName];
    
    //load .plist file
    NSDictionary* levelDict = [NSDictionary dictionaryWithContentsOfFile:levelPath];
    
    //validate
    NSAssert(levelDict, @"level config file not found");
    
    //create Level instance
    Level* l =[[Level alloc] init];
    
    //initialize the object from the dictionary
    l.pointsPerWord = [levelDict[@"pointsPerWord"] intValue];
    l.words = levelDict[@"words"];
    l.timeToSpell = [levelDict[@"timeToSpell"] intValue];
    
    return l;
    




}
@end
