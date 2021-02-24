//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import "AdditionQuestion.h"
#import "stdlib.h"

@interface AdditionQuestion()

@property NSInteger numberCorrectAnswer;
@property NSInteger numberWrongAnswer;

- (NSInteger) numberGenerator;

@end


@implementation AdditionQuestion{}


- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (NSString *) generateRandomQuestion {
    
    [self setFirstNumber: [self numberGenerator]];
    [self setSecondNumber: [self numberGenerator]];
    [self setAnswer: [self firstNumber] + [self secondNumber]];
    
    NSString *question = [NSString stringWithFormat:@"%ld + %ld ?", (long)[self firstNumber], (long)[self secondNumber]];
    
    return question;
}

- (NSInteger) numberGenerator {
    
    int numGenerated = arc4random_uniform(100);
    
    return (numGenerated >= 10) ? numGenerated : [self numberGenerator];
}

- (void) checkAnswer: (NSInteger) userAnswer {
    
    if ([self answer] == userAnswer) {
        NSLog(@"Right!");
        [self setNumberCorrectAnswer:[self numberCorrectAnswer] + 1];
    } else {
        NSLog(@"Wrong!");
        [self setNumberWrongAnswer:[self numberWrongAnswer] + 1];
    }
    
}


- (void) showScore {
    
    NSInteger percentageCorrectAnswer = [self numberCorrectAnswer] * 100 / ([self numberCorrectAnswer] + [self numberWrongAnswer]);
    
    NSLog(@"score: %ld right, %ld wrong ---- %ld%%", [self numberCorrectAnswer], [self numberWrongAnswer], percentageCorrectAnswer);
    
}

@end
