//
//  Contact.m
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import "AppController.h"
#import "UserController.h"
#import "Contact.h"
#import "Phone.h"
@interface AppController()



- (NSString *) inputFieldContact: (NSString *) field;

@end


@implementation AppController

- (instancetype)init {
    self = [super init];
    if (self) {
        _contactList = [NSMutableArray new];
    }
    return self;
}


- (NSString *) showMenu {
    NSString *menuTitle = (@"\n"
                           "+---------- Contact App -----------+\n"
                           "|    What would you like to do?    |\n"
                           "|                                  |\n"
                           "|   [1] - Create a new contact     |\n"
                           "|   [2] - List all contacts        |\n"
                           "|   [3] - Exit Application         |\n"
                           "+----------------------------------+\n");
    
    return [UserController getUserInput:0 And:menuTitle];
}

- (Contact *) addNewContact {
    
    Contact *newContact = [Contact new];
    
    newContact.firstName = [self inputFieldContact:@"firstName"];
    
    newContact.middleName = [self inputFieldContact:@"middleName"];
    
    newContact.lastName = [self inputFieldContact:@"lastName"];
    
    [newContact.phoneNumbers addObject: [newContact addPhone:[self inputFieldContact:@"home"] andType:@"home"]];
    
    [newContact.phoneNumbers addObject: [newContact addPhone:[self inputFieldContact:@"mobile"] andType:@"mobile"]];
    
    [newContact.phoneNumbers addObject: [newContact addPhone:[self inputFieldContact:@"work"] andType:@"work"]];
    
    return newContact;
    
}


- (NSString *) inputFieldContact: (NSString *) field {
    NSString *input = [NSString new];
    if([field isEqualTo: @"firstName"]) {
        while([input length] == 0) {
            input = [UserController getUserInput:20 And: @"First Name: "];
        }
    } else if([field isEqualTo: @"middleName"]) {
        input = [UserController getUserInput:20 And: @"Middle Name: "];
    } else if([field isEqualTo: @"lastName"]) {
        while([input length] == 0) {
            input = [UserController getUserInput:20 And: @"Last Name: "];
        }
    } else if([field isEqualTo: @"home"]) {
        input = [UserController getUserInput:20 And: @"Home Phone Number: "];
        input = [NSString stringWithFormat:@"%@-%@-%@", [[input substringFromIndex:0] substringToIndex:3], [[input substringFromIndex:3] substringToIndex:3], [[input substringFromIndex:6] substringToIndex:4]];
        
    } else if([field isEqualTo: @"mobile"]) {
        while([input length] == 0) {
            input = [UserController getUserInput:20 And: @"Mobile Phone Number: "];
            input = [NSString stringWithFormat:@"%@-%@-%@", [[input substringFromIndex:0] substringToIndex:3], [[input substringFromIndex:3] substringToIndex:3], [[input substringFromIndex:6] substringToIndex:4]];
        }
    } else if([field isEqualTo: @"work"]) {
        input = [UserController getUserInput:20 And: @"Work Phone Number: "];
        input = [NSString stringWithFormat:@"%@-%@-%@", [[input substringFromIndex:0] substringToIndex:3], [[input substringFromIndex:3] substringToIndex:3], [[input substringFromIndex:6] substringToIndex:4]];
    }
    
    return input;
}

- (void) showContactList {
    NSString *listToPrint = @"";
    for(int i = 0; i < [[self contactList] count]; i++) {
        NSString *formatContact = [NSString stringWithFormat:@"\n%d: <%@> (%@)", i, [self contactList][i].fullName, [self contactList][i].showPhoneNumbers];
        listToPrint = [listToPrint stringByAppendingString:formatContact];
    }
    NSLog(@"%@", listToPrint);
}


@end
