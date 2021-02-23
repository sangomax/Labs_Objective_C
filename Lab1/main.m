//
//  main.m
//  Lab1
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-22.
//

#import <Foundation/Foundation.h>

NSString *getUserInput(int maxLength, NSString *prompt) {
    if (maxLength < 1) {
        maxLength = 255;
    }
    NSLog(@"%@ ", prompt);
    char inputChars[maxLength]; // create a char array of size maxLength
    char *result = fgets(inputChars, maxLength, stdin);
    
    if (result != NULL) {
        
        NSString *objCString = [NSString stringWithUTF8String:inputChars]; // NSString.stringWithUTF8String(inputChars);
        
        NSCharacterSet *newLine = [NSCharacterSet newlineCharacterSet];
        NSString *trimmedInput = [objCString stringByTrimmingCharactersInSet: newLine];
        return trimmedInput;
    }
    return NULL;
}

NSString *removePonctuation(NSString *word) {
    
    NSMutableCharacterSet *acceptedCharacters = [[NSMutableCharacterSet alloc] init];
    [acceptedCharacters formUnionWithCharacterSet:[NSCharacterSet letterCharacterSet]];
    [acceptedCharacters formUnionWithCharacterSet:[NSCharacterSet decimalDigitCharacterSet]];
    
    return [[word componentsSeparatedByCharactersInSet:[acceptedCharacters invertedSet]] componentsJoinedByString:@""];
    
}

void executeProgram() {
    
    NSString *strInput = getUserInput(20, @"\nEnter your String (max 20 character):");

    while (true) {
        NSString *option = getUserInput(3, @"\nChoose one of the following options:\n1. Uppercase\n2. Lowercase\n3. Numberize\n4. Canadianize\n5. Respond\n6. De-Space-It\n7. Word Count\n8. Remove Punctuations\n9. Change String\n10. Done\n");
        
        switch ([option intValue]) {
            case 1:
                NSLog(@"%@", [strInput uppercaseString]);
                break;
            case 2:
                NSLog(@"%@", [strInput lowercaseString]);
                break;
            case 3:
                if (strInput.intValue != NULL) {
                    NSLog(@"%d", strInput.intValue);
                } else {
                    NSLog(@"It's not able to numberize your string");
                }
                break;
            case 4:
                NSLog(@"%@", [strInput stringByAppendingString:@", eh?"]);
                break;
            case 5:
                if([[strInput substringFromIndex:[strInput length] - 1] isEqualTo:@"?"]) {
                    NSLog(@"I don't know");
                } else if([[strInput substringFromIndex:[strInput length] - 1] isEqualTo:@"!"]) {
                    NSLog(@"Whoa, calm down!");
                } else {
                    NSLog(@"It's not able to respond");
                }
                break;
            case 6:
                NSLog(@"%@", [strInput stringByReplacingOccurrencesOfString:@" " withString:@"-"]);
                break;
            case 7:
                NSLog(@"%lu", (unsigned long)[strInput length]);
                break;
            case 8:
                NSLog(@"%@", removePonctuation(strInput));
                break;
            case 9:
                executeProgram();
            case 10:
                return;
            default:
                NSLog(@"Invalid Option");
        }
    }
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        executeProgram();
        
        NSLog(@"Bye");
    }
    return 0;
}






