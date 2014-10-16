//
//  GameController.m
//  SpellRunner
//
//  Created by Toni Chen on 10/15/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "GameController.h"

@implementation GameController
-(void)dealRandomWord
{
    //1
    NSAssert(self.level.words, @"no level loaded");
    
    //2 random word is generated from word list- then grabbed at this index
    int randomIndex = arc4random()%[self.level.words count];
    NSArray* wordSpell = self.level.words[ randomIndex ];
    
    //3 store word1
    NSString* word1 = wordSpell[0];
    
    //4 store number of characters in each word into word1Length
    int word1Length = [word1 length];
    
    //5 print word in console
    NSLog(@"phrase1[%i]: %@", word1Length, wordSpell);
    
}
@end
