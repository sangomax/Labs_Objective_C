//
//  ManagerKitchenTwo.h
//  PizzaRestaurant
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "DeliveryService.h"
NS_ASSUME_NONNULL_BEGIN

@interface ManagerKitchenTwo : NSObject <KitchenDelegate>

@property DeliveryService *deliveryService;

- (instancetype)init: (DeliveryService *) service;

@end

NS_ASSUME_NONNULL_END
