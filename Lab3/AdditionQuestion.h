//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property NSInteger firstNumber;
@property NSInteger secondNumber;
@property NSInteger answer;

- (instancetype)init;
- (NSString *) generateRandomQuestion;
- (void) checkAnswer: (NSInteger) userAnswer;
- (void) showScore;

@end

NS_ASSUME_NONNULL_END
