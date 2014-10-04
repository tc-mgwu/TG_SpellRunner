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

-(void) spawnWizard;
{
   
    Wizard *newPlayer = (Wizard *) [CCBReader load:@"Wizard"];

    newPlayer.position=ccp([[CCDirector sharedDirector] viewSize].width/2,
                           [[CCDirector sharedDirector] viewSize].height/2);
    //places player in the middle

    [_contentNode addChild:newPlayer];

}



@end
