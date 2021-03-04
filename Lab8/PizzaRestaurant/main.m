//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "ManagerKitchenOne.h"
#import "ManagerKitchenTwo.h"
#import "NoManagerKitchen.h"

int main(int argc, const char * argv[])
{
    
    
    
    @autoreleasepool {
        
        enum PizzaSize {small, medium, large};
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Pizza *pizza = [Pizza new];
        ManagerKitchenOne *manager1;
        ManagerKitchenTwo *manager2;
        NoManagerKitchen *noManager;
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            fseek(stdin,0,SEEK_END);
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
            
            NSLog(@"Choose a manager by typing 1 or 2 or anything for no manager:");
            fgets (str, 100, stdin);
            NSString *inputManager = [[NSString alloc] initWithUTF8String:str];
            inputManager = [inputManager stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([inputManager intValue] == 1) {
                if(!manager1) {
                    manager1 = [ManagerKitchenOne new];
                }
                [restaurantKitchen setDelegate: manager1];
            } else if ([inputManager intValue] == 2) {
                if(!manager2) {
                    manager2 = [ManagerKitchenTwo new];
                }
                [restaurantKitchen setDelegate:manager2];
            } else {
                if(!noManager) {
                    noManager = [NoManagerKitchen new];
                }
                [restaurantKitchen setDelegate:noManager];
            }
            
            if([commandWords[0] isEqual: @"small"]) {
                pizza = [restaurantKitchen makePizzaWithSize: (PizzaSize) small toppings:toppings];
            } else if([commandWords[0] isEqual: @"medium"]) {
                pizza = [restaurantKitchen makePizzaWithSize: (PizzaSize) medium toppings:toppings];
            } else if([commandWords[0] isEqual: @"large"]) {
                pizza =  [restaurantKitchen makePizzaWithSize: (PizzaSize) large toppings:toppings];
            } else if([commandWords[0] isEqual: @"Pepperoni"]) {
                pizza = [Pizza largePepperoni];
            } else if([commandWords[0] isEqual: @"lonelyCheese"]) {
                pizza = [Pizza lonelyCheese];
            } else {
                NSLog(@"Order invalid");
                continue;
            }
            
            
            NSLog(@"%@", pizza.description);
            
        }
        
    }
    return 0;
}

