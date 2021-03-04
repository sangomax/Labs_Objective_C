//
//  ManagerKitchenTwo.m
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "ManagerKitchenTwo.h"

@implementation ManagerKitchenTwo

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return true;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return true;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    
    NSLog(@"Have a good day");
    
}

@end
