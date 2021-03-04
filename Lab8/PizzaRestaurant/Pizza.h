//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-01.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pizza : NSObject

typedef NS_ENUM(int, PizzaSize);

@property PizzaSize pizzaSize;
@property NSArray* toppings;

- (instancetype)initWithSize: (PizzaSize) pizzaSize andToppings: (NSArray *) toppings;

+ (Pizza *)largePepperoni;

+ (Pizza *)lonelyCheese;

@end

NS_ASSUME_NONNULL_END
