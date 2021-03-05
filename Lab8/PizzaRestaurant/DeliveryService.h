//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryService : NSObject

@property NSMutableArray *pizzasDelivered;

- (instancetype)init;

- (void) deliverPizza:(Pizza *)pizza;

- (NSMutableArray *) allPizzasDelivered;

@end

NS_ASSUME_NONNULL_END
