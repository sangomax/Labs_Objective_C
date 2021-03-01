//
//  GameView.m
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import "GameView.h"
#import "UserController.h"
#import "Dice.h"
#import "GameController.h"
@implementation GameView

- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}


+ (NSString *) showMenu: (BOOL) isEndGame{
    
    NSString *menuTitle = (@"\n"
                                                    "+------------ Threelow Game --------------+\n"
                                                    "|       What would you like to do?        |\n"
                                                    "|                                         |\n"
                                                    "|   [  roll   ] - to roll the dice        |\n"
                                                    "|   [  hold   ] - to hold a dice          |\n");
    if(isEndGame) {
        menuTitle = [menuTitle stringByAppendingString:@"|   [ newgame ] - to start the game again |\n"];
    } else {
        menuTitle = [menuTitle stringByAppendingString:@"|   [  reset  ] - to un-hold all dice     |\n"];
    }
    menuTitle = [menuTitle stringByAppendingString:@"|   [  done   ] - to end the game         |\n"
                                                    "|   [ display ] - to show current stats   |\n"
                                                    "|                                         |\n"
                                                    "+-----------------------------------------+\n"];
    
    return [UserController getUserInput:0 And:menuTitle];
    
}

+ (void) showStats: (NSMutableArray<Dice *>*) currentDices And: (NSInteger) remainingRolls And: (NSInteger) score And: (BOOL) isEndGame{
    
    
    NSLog(@"+---------- Stats Game ----------+\n");
    NSLog(@"|                                |\n");
    NSLog(@"|     Remaining Rolls : %ld        |\n", remainingRolls);
    if (isEndGame) {
        NSLog(@"|            Game Over           |\n");
    }
    NSLog(@"+--------------------------------+\n");
    NSLog(@"|                                |\n");
    NSLog(@"|          Current Dice          |\n");
    
    NSInteger diceSize = [currentDices[0].description length] + [currentDices[1].description length] + [currentDices[2].description length] + [currentDices[3].description length] + [currentDices[4].description length];
    if(diceSize == 5) {
        NSLog(@"|          %@  %@  %@  %@  %@         |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    } else if(diceSize == 7) {
        NSLog(@"|         %@  %@  %@  %@  %@        |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    } else if(diceSize == 9) {
        NSLog(@"|        %@  %@  %@  %@  %@       |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    } else if(diceSize == 11) {
        NSLog(@"|       %@  %@  %@  %@  %@      |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    } else if(diceSize == 13) {
        NSLog(@"|      %@  %@  %@  %@  %@     |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    } else if(diceSize == 15) {
        NSLog(@"|     %@  %@  %@  %@  %@    |\n", currentDices[0].description, currentDices[1].description, currentDices[2].description, currentDices[3].description, currentDices[4].description);
    }
    NSLog(@"|                                |\n");
    NSLog(@"|           Total Score          |\n");
    NSLog(@"|                                |\n");
    NSLog(@"|            |   %ld   |           |\n",score);
    NSLog(@"|                                |\n");
    NSLog(@"+--------------------------------+\n");
    
}


+ (NSInteger) showNumberDiceMessage {
    
    NSString *number = [UserController getUserInput:4 And:@"Enter the number of the dice:"];
    
    if([number intValue] == 0 || [number intValue] > 5) {
        NSLog(@"value invalid");
        return [self showNumberDiceMessage];
    }
    
    return [number intValue];
    
}

@end
