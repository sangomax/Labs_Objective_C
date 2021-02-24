//
//  main.m
//  Lab2
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Box *box = [[Box alloc] initWithHeight:100 AndWidth:10 AndLength:15];
        
        NSLog(@"%.2f",[box calcVolume:[box height] And:[box width] And:[box length]]);
        
        NSLog(@"%.2f", [box calcBoxInsideAnother:10 And:20 And:10]);
    }
    return 0;
}
