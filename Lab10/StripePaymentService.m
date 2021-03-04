//
//  StripePaymentService.m
//  Lab10
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-02.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)amount {
    NSLog(@"Stripe processed amount $%.2f", (float)amount);
}

- (BOOL)canProcessPayment { 
    if ( arc4random_uniform(2) == 0 ) {
        return false;
    } else {
        return true;
    }
}


@end
