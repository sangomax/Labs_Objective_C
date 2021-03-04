//
//  PaymentGateway.m
//  Lab10
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-02.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) paymentMethod: (NSInteger) amount {
    if([_delegate canProcessPayment]) {
        [_delegate processPaymentAmount: amount];
    } else {
        NSLog(@"Sorry, but your payment cannot be processed.");
    }
}

@end
