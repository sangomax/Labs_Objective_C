//
//  ApplePaymentService.m
//  Lab10
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-04.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

- (BOOL)canProcessPayment { 
    if ( arc4random_uniform(2) == 0 ) {
        return false;
    } else {
        return true;
    }
}

- (void)processPaymentAmount:(NSInteger)amount { 
    NSLog(@"Apple processed amount $%.2f", (float)amount);
}

@end
