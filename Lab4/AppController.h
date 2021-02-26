//
//  Contact.h
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
NS_ASSUME_NONNULL_BEGIN

@interface AppController : NSObject

@property (strong) NSMutableArray<Contact *>  *contactList;

- (instancetype)init;

- (NSString *) showMenu;

- (Contact *) addNewContact;

- (void) showContactList;

@end

NS_ASSUME_NONNULL_END
