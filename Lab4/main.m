//
//  main.m
//  Lab4
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-25.
//

#import <Foundation/Foundation.h>
#import "AppController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        AppController *contactApp = [AppController new];
        
        while (true) {
            NSString *option = contactApp.showMenu;
            switch([option intValue]) {
                case 1:
                    [[contactApp contactList] addObject:[contactApp addNewContact]];
                    break;
                case 2:
                    if([[contactApp contactList] count] > 0) {
                        [contactApp showContactList];
                    } else {
                        NSLog(@"Empty Contact List");
                    }
                    break;
                case 3:
                    NSLog(@"Bye");
                    return 0;
                default:
                    NSLog(@"Option Invalid");
                    
            }
        }
        
        
    }
    return 0;
}
