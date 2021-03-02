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
    return [[Pizza alloc] initWithSize:size andToppings:toppings];
}

+ (Pizza *)largePepperoni{
    NSArray *toppings = @[@"Pepperoni"];
    PizzaSize size = (PizzaSize) 2;
    return [[Pizza alloc] initWithSize: size andToppings:toppings];
}

+ (Pizza *)lonelyCheese{
    NSArray *toppings = @[@"Cheese"];
    PizzaSize size = (PizzaSize) 0;
    return [[Pizza alloc] initWithSize: size andToppings:toppings];
}

@end
