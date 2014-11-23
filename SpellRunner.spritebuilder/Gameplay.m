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
    CCTextField *_spellingBox;
    Wizard *player;
    
    NSString *word;
//    

    CCLabelTTF *_label;
    NSString *curWord;
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
    
    //assign self.level
    self.level= level1;
    
    
    NSLog(@"words: %@", level1.words);
    [self spawnWizard];
    [self dealRandomWord];
}

-(void)dealRandomWord
{
    //1
    NSAssert(self.level.words, @"no level loaded");
    
    //2 random word is generated from word list- then grabbed at this index
    int randomIndex = arc4random()%[self.level.words count];
    NSString* wordSpell = self.level.words[ randomIndex ];
    
    //3 store word1
    NSString* word1 = wordSpell;
   
    
    //4 store number of characters in each word into word1Length
    int word1Length = [word1 length];
    
    //5 print word in console
    NSLog(@"phrase1[%i]: %@", word1Length, word1);
    
    //6 set label (with property string) to the word (nsstring)
    _label.string= wordSpell;
    curWord= wordSpell;
}


-(void) update:(CCTime)delta
{
    //when user pushes return


}

- (void)buttonText:(CCTextField*)_userspellingbox
{
    CCLOG(@"%@",_userspellingbox.string);
    if ([_userspellingbox.string isEqualToString:curWord])
    {
        CCLOG(@"YAY, right answer");
        _userspellingbox.string = @"";
        
    }
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
