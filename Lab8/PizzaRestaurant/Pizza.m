//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@interface Pizza()
    
- (NSString *) sizeLabel: (PizzaSize) size;
    

@end

@implementation Pizza

- (instancetype)initWithSize: (PizzaSize) pizzaSize andToppings: (NSArray *) toppings {
    if (self = [super init]) {
        _pizzaSize = pizzaSize;
        _toppings = toppings;
    }
    return self;
}

typedef NS_ENUM(int, PizzaSize) {
    small,
    medium,
    large
};

- (NSString *)description
{
    NSString *desc = @"1 ";
    
    for(NSString *topping in _toppings) {
        desc = [desc stringByAppendingFormat: @"%@ ",[topping capitalizedString]];
    }
    desc = [desc stringByAppendingFormat:@"%@", [self sizeLabel:_pizzaSize]];
    return [NSString stringWithFormat:@" %@ Pizza", desc];
}

- (NSString *) sizeLabel: (PizzaSize) size {
    
    switch (size) {
        case 0:
            return @"Small";
            break;
        case 1:
            return @"Medium";
            break;
        case 2:
            return @"Large";
            break;
            
        default:
            break;
    }
    return @"";
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
