//
//  Contact.h
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "Phone.h"
NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property NSString *firstName;
@property NSString *middleName;
@property NSString *lastName;
@property NSMutableArray<Phone *> *phoneNumbers;

- (instancetype)init;
- (NSString *) fullName;
- (NSString *) showPhoneNumbers ;
- (Phone *) addPhone: (NSString *) number andType: (NSString *) type;

@end

NS_ASSUME_NONNULL_END
