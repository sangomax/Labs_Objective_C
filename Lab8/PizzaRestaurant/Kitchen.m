//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize) size toppings:(NSArray *)toppings
{
    Pizza *pizza = nil;
    
    if ([_delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        
        if([_delegate kitchenShouldUpgradeOrder:self]) {
            
            size = 2;
            
        }
        
        pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        
    }
    
    if([_delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
        [_delegate kitchenDidMakePizza:pizza];
    }
    
    return pizza;
    
}







@end
