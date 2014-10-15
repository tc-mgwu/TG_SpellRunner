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

    Level* level1 = [Level levelWithNum:1];
    NSLog(@"words: %@", level1.words);
    [self spawnWizard];
    
}
    //
//-(void) onEnter
//{
//    [super onEnter];
//    _spellingbox.positionType=CCPositionTypeNormalized;
//    _spellingbox.position= ccp(.5f,.5f);
//
//}


//-(void)update:(CCTime)delta
//{
//    if (player.spellRight)
//    {
//      //move forward
//        
//    }
//    else
//    {
//     //move back and pause
//    
//    }
//
//}

//-(void) giveWord
//{
//    //give player word
////    str = [NSString stringWithFormat:@"%d",xNumber];
//
//}

-(void) spawnWizard;
{
    player = (Wizard *) [CCBReader load:@"Wizard"];

    player.position=ccp([[CCDirector sharedDirector] viewSize].width/2,
                           [[CCDirector sharedDirector] viewSize].height/2);
    //places player in the middle

    [_contentNode addChild:player];

}




@end
