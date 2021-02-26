//
//  UserController.m
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import "UserController.h"

@implementation UserController


+ (NSString *) getUserInput:(int) maxLength And: (NSString *) prompt {
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

@end
