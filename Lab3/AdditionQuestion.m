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

- (NSInteger) numberGenerator: (int) fromValue And: (int) toValue;

@end


@implementation AdditionQuestion{}


- (instancetype)init {
    if (self = [super init]) {
        
    }
    return self;
}

- (NSString *) generateRandomQuestion {
    
    [self setFirstNumber: [self numberGenerator:10 And:100]];
    [self setSecondNumber: [self numberGenerator:10 And:100]];
    NSString *question = @"";
    
    switch ([self numberGenerator:0 And:3]) {
        case 0:
            [self setAnswer: [self firstNumber] + [self secondNumber]];
            question = [NSString stringWithFormat:@"%ld + %ld ?", (long)[self firstNumber], (long)[self secondNumber]];
            break;
        case 1:
            [self setAnswer: [self firstNumber] - [self secondNumber]];
            question = [NSString stringWithFormat:@"%ld - %ld ?", (long)[self firstNumber], (long)[self secondNumber]];
        case 2:
            [self setAnswer: [self firstNumber] * [self secondNumber]];
            question = [NSString stringWithFormat:@"%ld * %ld ?", (long)[self firstNumber], (long)[self secondNumber]];
        case 3:
            if ([self firstNumber] > [self secondNumber]) {
                [self setAnswer: [self firstNumber] / [self secondNumber]];
                question = [NSString stringWithFormat:@"%ld / %ld ?", (long)[self firstNumber], (long)[self secondNumber]];
            } else {
                [self setAnswer: [self secondNumber] / [self firstNumber]];
                question = [NSString stringWithFormat:@"%ld / %ld ?", (long)[self secondNumber], (long)[self firstNumber]];
            }
        default:
            break;
    }

    return question;
}

- (NSInteger) numberGenerator: (int) fromValue And: (int) toValue {
    
    int numGenerated = arc4random_uniform(toValue);
    
    return (numGenerated >= fromValue) ? numGenerated : [self numberGenerator:fromValue And:toValue];
}

- (void) checkAnswer: (float) userAnswer {
    
    if ([[NSString stringWithFormat: @"%.2f",[self answer]] isEqualTo: [NSString stringWithFormat: @"%.2f", userAnswer]]) {
        NSLog(@"Right! -> %.2f", [self answer]);
        [self setNumberCorrectAnswer:[self numberCorrectAnswer] + 1];
    } else {
        NSLog(@"Wrong! -> %.2f", [self answer]);
        [self setNumberWrongAnswer:[self numberWrongAnswer] + 1];
    }
    
}

- (void) showTimeScore: (NSTimeInterval) timeSeconds {
    timeSeconds *= -1;
    int hours = timeSeconds / 3600;
    int minutes = (timeSeconds - (hours * 3600)) / 60;
    int seconds = timeSeconds - (minutes * 60);
    int average = timeSeconds / ([self numberCorrectAnswer] + [self numberWrongAnswer]);
    
    NSLog(@"Total Time: %dh %dm %ds, Average Time: %ds", hours, minutes, seconds, average);
}


- (void) showScore {
    
    NSInteger percentageCorrectAnswer = [self numberCorrectAnswer] * 100 / ([self numberCorrectAnswer] + [self numberWrongAnswer]);
    
    NSLog(@"score: %ld right, %ld wrong ---- %ld%%", [self numberCorrectAnswer], [self numberWrongAnswer], percentageCorrectAnswer);
    
}

@end
