//
//  main.m
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import <Foundation/Foundation.h>
#import "GameController.h"
#import "GameView.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GameController *game = [GameController new];
        NSInteger remainingRolls = 5;
        NSInteger score = 0;
        _Bool flagValidRoll = true;
        _Bool flagEndGame = false;
        
        while(true) {
           
            NSString *option = [GameView showMenu:flagEndGame];
            
            if ([option isEqualTo: @"newgame"]) {
                remainingRolls = 5;
                score = 0;
                [game resetDice];
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
                flagEndGame = false;
            } else if (flagEndGame) {
                NSLog(@"Game Over - Select New Game to play again");
                continue;
            } else if ([option isEqualTo: @"roll"]) {
                if(remainingRolls == 1) {
                    score = [game endGame];
                    [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And: true];
                    remainingRolls -= 1;
                } else {
                    if(flagValidRoll) {
                        remainingRolls -= 1;
                        [game setCurrentDicesRandomized:[game dicesRandomized]];
                        flagValidRoll = false;
                    } else {
                        NSLog(@"You need to hold least one dice");
                        continue;
                    }
                    [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
                }
            } else if ([option isEqualTo: @"hold"]) {
                if ([game currentDicesRandomized][0].value == 0) {
                    NSLog(@"Option Invalid, you need to roll the dices first");
                    continue;
                }
                NSInteger number = [GameView showNumberDiceMessage];
                [game holdDice: number];
                score += [game currentDicesRandomized][number - 1].value;
                flagValidRoll = true;
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
            } else if ([option isEqualTo: @"reset"]) {
                remainingRolls = 5;
                score = 0;
                [game resetDice];
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
            } else if ([option isEqualTo: @"done"]) {
                score = [game endGame];
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And: true];
                flagEndGame = true;
            } else if ([option isEqualTo: @"display"]) {
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
            } else if ([option isEqualTo: @"rolll*"]) {
                [game secret];
                [GameView showStats:[game currentDicesRandomized] And:remainingRolls And:score And:false];
                
            } else {
                NSLog(@"Option Invalid");
            }
        }
    }
    return 0;
}
