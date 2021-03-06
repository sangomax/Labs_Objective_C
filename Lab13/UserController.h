//
//  UserController.h
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UserController : NSObject

+ (NSString *) getUserInput:(int) maxLength And: (NSString *) prompt;

@end

NS_ASSUME_NONNULL_END
