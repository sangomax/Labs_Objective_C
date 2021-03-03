//
//  Menu.m
//  Foodtruck
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-02.
//  Copyright © 2021 Lighthouse Labs. All rights reserved.
//

#import "Menu.h"

@implementation Menu

- (double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if([food isEqualTo:@"bao"]) {
        return 5.0;
    } else if([food isEqualTo:@"shortbread"]) {
        return 12.0;
    }
    return 0.0;
}

@end
