//
//  main.m
//  Lab13
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-05.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"
#import "UserController.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString *inputUser = [UserController getUserInput:0 And:@"Tap a sentence to tokenization"];
        NSString *pigLatin = @"";
        
        for(NSString *word in [inputUser componentsSeparatedByString:@" "]) {
            pigLatin = [pigLatin stringByAppendingFormat:@"%@ ", [[word tokenization] capitalizedString] ];
        }
        
        NSLog(@"%@", pigLatin);
        
    }
    return 0;
}
