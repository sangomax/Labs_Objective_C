//
//  Contact.m
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import "Contact.h"


@implementation Contact

- (instancetype)init {
      self = [super init];
      if (self) {
          _phoneNumbers = [NSMutableArray new];
      }
      return self;
}

- (NSString *) fullName {
    
    return [NSString stringWithFormat:@"%@ %@ %@", _firstName, _middleName, _lastName];
    
}

- (NSString *) showPhoneNumbers {
    NSString *phoneToPrint = @"";
    
    for(Phone *phone in [self phoneNumbers] ) {
        if(![phoneToPrint isEqualTo: @""]) {
            phoneToPrint = [phoneToPrint stringByAppendingString:@", "];
        }
        NSString *formatPhones = [NSString stringWithFormat:@"%@: %@", phone.phoneType, phone.phoneNumber ];
        phoneToPrint = [phoneToPrint stringByAppendingString:formatPhones];
    }
    
    return phoneToPrint;
}

- (Phone *) addPhone: (NSString *) number andType: (NSString *) type {
    
    Phone *phone = [Phone new];
    
    [phone setPhoneType: type];
    [phone setPhoneNumber: number];
    
    return phone;
    
}

@end
