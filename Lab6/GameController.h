//
//  Dice.h
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

@property NSMutableArray<Dice *> *currentDicesRandomized;

- (void) resetDice;
- (void) holdDice: (NSInteger) chosenDice;
- (NSMutableArray<Dice *> *) dicesRandomized;
- (NSInteger) endGame;
- (void) secret;

@end

NS_ASSUME_NONNULL_END
