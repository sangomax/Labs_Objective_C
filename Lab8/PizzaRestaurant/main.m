//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"


int main(int argc, const char * argv[])
{
    
    
    
    @autoreleasepool {
        
        enum PizzaSize {small, medium, large};
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSMutableArray *toppings = [NSMutableArray new];
            for(int i = 0; i < commandWords.count; i++) {
                if (i > 0){
                    [toppings addObject:commandWords[i]];
                }
            }
            // And then send some message to the kitchen...
            Pizza *pizza = [Pizza new];
            
            
            if([commandWords[0] isEqual: @"small"]) {
                pizza = [restaurantKitchen makePizzaWithSize: (PizzaSize) small toppings:toppings];
            } else if([commandWords[0] isEqual: @"medium"]) {
                pizza = [restaurantKitchen makePizzaWithSize: (PizzaSize) medium toppings:toppings];
            } else if([commandWords[0] isEqual: @"large"]) {
                pizza =  [restaurantKitchen makePizzaWithSize: (PizzaSize) large toppings:toppings];
            } else if([commandWords[0] isEqual: @"Pepperoni"]) {
                pizza = [Kitchen largePepperoni];
            } else if([commandWords[0] isEqual: @"lonelyCheese"]) {
                pizza = [Kitchen lonelyCheese];
            } else {
                NSLog(@"Order invalid");
                continue;
            }
            
            
            NSLog(@"%@", pizza.description);
            
        }
        
    }
    return 0;
}

