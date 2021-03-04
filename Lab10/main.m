//
//  main.m
//  Lab10
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-02.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        float randomNum = arc4random_uniform(990) + 10;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%.2f Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", randomNum);
        
        char inputChars[2];
        fgets(inputChars, 2, stdin);
        
        NSString *optionPayment = [NSString stringWithUTF8String: inputChars];
        
        PaymentGateway *payment = [PaymentGateway new];
        PaypalPaymentService *paypalPayment = [PaypalPaymentService new];
        StripePaymentService *stripePayment = [StripePaymentService new];
        AmazonPaymentService *amazonPayment = [AmazonPaymentService new];
        ApplePaymentService *applePayment = [ApplePaymentService new];
        switch (optionPayment.intValue) {
            case 1:
                payment.delegate = paypalPayment;
                [payment paymentMethod:randomNum];
                break;
            case 2:
                payment.delegate = stripePayment;
                [payment paymentMethod:randomNum];
                break;
            case 3:
                payment.delegate = amazonPayment;
                [payment paymentMethod:randomNum];
                break;
            case 4:
                payment.delegate = applePayment;
                [payment paymentMethod:randomNum];
                break;
            default:
                NSLog(@"Option Invalid");
                break;
        }
        
    }
    return 0;
}
