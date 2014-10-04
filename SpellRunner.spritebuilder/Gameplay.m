//
//  Gameplay.m
//  SpellRunner
//
//  Created by Toni Chen on 9/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Gameplay.h"
#import "Wizard.h"
@implementation Gameplay
{
    CCNode *_contentNode;
    CCTextField *_spellingbox;
    Wizard *player;
    
}

-(void) didLoadFromCCB
{
    self.userInteractionEnabled=TRUE;

    
}
-(void) onEnter
{
    [super onEnter];

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


-(void)update:(CCTime)delta
{
    if (player.spellRight)
    {
      //move forward
        
    }
    else
    {
     //move back and pause
    
    }


}
-(void) spawnWizard;
{
   
    Wizard *player = (Wizard *) [CCBReader load:@"Wizard"];

    player.position=ccp([[CCDirector sharedDirector] viewSize].width/2,
                           [[CCDirector sharedDirector] viewSize].height/2);
    //places player in the middle

    [_contentNode addChild:player];

}




@end
