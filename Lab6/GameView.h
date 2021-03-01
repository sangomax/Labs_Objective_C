//
//  GameView.h
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
NS_ASSUME_NONNULL_BEGIN

@interface GameView : NSObject

+ (NSString *) showMenu: (BOOL) isEndGame;
+ (void) showStats: (NSMutableArray<Dice *>*) currentDices And: (NSInteger) remainingRolls And: (NSInteger) score And: (BOOL) isEndGame;
+ (NSInteger) showNumberDiceMessage;

@end

NS_ASSUME_NONNULL_END
