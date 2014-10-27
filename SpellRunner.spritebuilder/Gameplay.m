//
//  Gameplay.m
//  SpellRunner
//
//  Created by Toni Chen on 9/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameplay.h"
#import "Wizard.h"
#import "Level.h"

@implementation Gameplay
{
    CCNode *_contentNode;
    CCTextField *_spellingbox;
    Wizard *player;
    
    NSString *word;
    
}


-(void) didLoadFromCCB
{
    self.userInteractionEnabled=TRUE;
    
}


-(void) onEnter
{
    [super onEnter];

    //defines what level property to load.
    Level* level1 = [Level levelWithNum:1];
   
    NSLog(@"words: %@", level1.words);
    [self spawnWizard];
    [self dealRandomWord]; //this little crap doesn't work.
}

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
    NSLog(@"phrase1[%i]: %@", word1Length, word1);
    
}





-(void) spawnWizard;
{
    player = (Wizard *) [CCBReader load:@"Wizard"];

    player.position=ccp([[CCDirector sharedDirector] viewSize].width/2,
                           [[CCDirector sharedDirector] viewSize].height/2);
    //places player in the middle

    [_contentNode addChild:player];

}




@end
