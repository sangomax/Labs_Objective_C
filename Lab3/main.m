//
//  main.m
//  Lab3
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL) {
        
        NSString *objCString = [NSString stringWithUTF8String:inputChars];
        
        return [objCString stringByTrimmingCharactersInSet: [NSCharacterSet newlineCharacterSet]];;
    }
    return 0;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        AdditionQuestion *addition = [[AdditionQuestion alloc] init];
        
        NSLog(@"MATHS!");
        NSLog(@"Digit 'q' to quit");
        while (TRUE) {
        
            NSString *userAnswer = getUserInput(5, [addition generateRandomQuestion]);
            if([userAnswer  isEqual: @"q"]) {
                break;
            }
            [addition checkAnswer:[userAnswer intValue]];
            
        }
        
        [addition showScore];
        
    }
    return 0;
}
