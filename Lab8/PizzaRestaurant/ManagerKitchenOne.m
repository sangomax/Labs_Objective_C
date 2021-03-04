//
//  ManagerKitchen.m
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "ManagerKitchenOne.h"

@implementation ManagerKitchenOne

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    for (NSString *topping in toppings) {
        if([topping isEqualTo:@"anchovies"]) {
            return false;
        }
    }
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return false;
}

@end
