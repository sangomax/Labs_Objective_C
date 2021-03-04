//
//  PaymentGateway.h
//  Lab10
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-02.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@protocol PaymentDelegate <NSObject>

@required
- (void) processPaymentAmount: (NSInteger) amount;
- (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id<PaymentDelegate> delegate;
- (void) paymentMethod: (NSInteger) amount;

@end

NS_ASSUME_NONNULL_END
