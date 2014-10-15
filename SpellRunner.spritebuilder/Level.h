//
//  Level.h
//  SpellRunner
//
//  Created by Toni Chen on 10/14/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Level : NSObject
//properties stored in .plist file
//The properties match the structure of the .plist file- here we will load the data and populate the properties. Also declare a factory method to produce Level class instances for a given difficulty level- which will range from 1-3

@property (assign, nonatomic) int pointsPerWord;
@property (assign, nonatomic) int timeToSpell;
@property (strong, nonatomic) NSArray* anagrams;
@end
