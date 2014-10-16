//
//  GameController.h
//  SpellRunner
//
//  Created by Toni Chen on 10/15/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Level.h"
@interface GameController : NSObject
// The view you’ll use to display game elements on the screen.
@property (weak, nonatomic) UIView* gameView;

//The Level object that stores the anagrams and other settings for the current game level.
@property (strong, nonatomic) Level* level;
//The method you will call to display the current word on the screen.
-(void)dealRandomWord;

@end
