//
//  AdditionQuestion.h
//  Lab3
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject

@property int firstNumber;
@property int secondNumber;
@property int answer;

- (instancetype)init;
- (NSString *) generateRandomQuestion;
- (void) checkAnswer: (int) userAnswer;
- (void) showScore;

@end

NS_ASSUME_NONNULL_END
