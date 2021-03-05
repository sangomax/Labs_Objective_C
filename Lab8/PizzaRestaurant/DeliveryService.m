//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
@implementation DeliveryService

- (instancetype)init {
    if (self = [super init]) {
        _pizzasDelivered = [NSMutableArray new];
    }
    return self;
}


- (void) deliverPizza:(Pizza *)pizza {
    
    DeliveryCar *deliveryCar = [DeliveryCar new];
    
    [_pizzasDelivered addObject:[pizza description]];
    
    [deliveryCar deliverPizza:pizza];
}

- (NSMutableArray *) allPizzasDelivered {
    
    return _pizzasDelivered;
    
}

@end
