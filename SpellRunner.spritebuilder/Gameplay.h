//
//  Gameplay.h
//  SpellRunner
//
//  Created by Toni Chen on 9/12/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "CCNode.h"
#import "Wizard.h"
#import "Level.h"
#import <Foundation/Foundation.h>

@interface Gameplay : CCNode


//The Level object that stores the anagrams and other settings for the current game level.
@property (strong, nonatomic) Level* level;


@end
