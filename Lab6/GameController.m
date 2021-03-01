//
//  Dice.m
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import "GameController.h"
#import "Dice.h"
@interface GameController()

- (NSInteger) numberGenerator: (int) fromValue And: (int) toValue;
- (Dice *) roleDice;


@end


@implementation GameController

- (instancetype)init {
    if (self = [super init]) {
        _currentDicesRandomized = [NSMutableArray<Dice *> arrayWithObjects:[Dice new],[Dice new],[Dice new],[Dice new],[Dice new], nil];
    }
    return self;
}

- (void) resetDice {
 
    _currentDicesRandomized = [NSMutableArray<Dice *> arrayWithObjects:[Dice new],[Dice new],[Dice new],[Dice new],[Dice new], nil];
    
}

- (void) holdDice: (NSInteger) chosenDice {
    if ([self currentDicesRandomized][chosenDice - 1].isHold) {
        [[self currentDicesRandomized][chosenDice - 1] setIsHold:false];
    } else {
        [[self currentDicesRandomized][chosenDice - 1] setIsHold:true];
    }
}

- (NSMutableArray<Dice *> *) dicesRandomized {
    
    NSMutableArray<Dice *> *newDices = [NSMutableArray<Dice *> new];
    
    for (Dice *dice in [self currentDicesRandomized]) {
        if (dice.isHold) {
            [newDices addObject:dice];
        } else {
            [newDices addObject: [self roleDice]];
        }
    }
    
    return newDices;
}

- (Dice *) roleDice {
    
    NSInteger takeNumber = [self numberGenerator:1 And:6];
    
    Dice *dice = [Dice new];
    
    switch (takeNumber) {
        case 1:
            [dice setLabel: @"⚀"];
            [dice setValue: 1];
            break;
        case 2:
            [dice setLabel: @"⚁"];
            [dice setValue: 2];
            break;
        case 3:
            [dice setLabel: @"⚂"];
            [dice setValue: 3];
            break;
        case 4:
            [dice setLabel: @"⚃"];
            [dice setValue: 4];
            break;
        case 5:
            [dice setLabel: @"⚄"];
            [dice setValue: 5];
            break;
        case 6:
            [dice setLabel: @"⚅"];
            [dice setValue: 6];
            break;
    }
    
    return dice;
    
}

- (NSInteger) endGame {
    
    NSInteger finalScore = 0;
    NSInteger count = 1;
    
    for (Dice *dice in [self currentDicesRandomized]) {
        if(dice.isHold) {
            count += 1;
        } else {
            [self holdDice: count];
            count += 1;
        }
        
        finalScore += dice.value;
    }
    
    return finalScore;
}


- (NSInteger) numberGenerator: (int) fromValue And: (int) toValue {
    
    int numGenerated = arc4random_uniform(toValue);
    
    return (numGenerated >= fromValue) ? numGenerated : [self numberGenerator:fromValue And:toValue];
}

- (void) secret {
    
    Dice *secretDice = [Dice new];
    [secretDice setLabel: @"⚀"];
    [secretDice setValue: 1];
    _currentDicesRandomized = [NSMutableArray<Dice *> arrayWithObjects:secretDice,secretDice,secretDice,secretDice,secretDice, nil];
    
}

@end
