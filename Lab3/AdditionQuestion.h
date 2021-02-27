//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property float firstNumber;
@property float secondNumber;
@property float answer;

- (instancetype)init;
- (NSString *) generateRandomQuestion;
- (void) checkAnswer: (float) userAnswer;
- (void) showTimeScore: (NSTimeInterval) timeSeconds;
- (void) showScore;

@end

NS_ASSUME_NONNULL_END
