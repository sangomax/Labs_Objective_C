//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Adriano Gaiotto de Oliveira on 2021-03-05.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

- (NSString *) tokenization {
    
    NSArray *clusters = @[@"Ch", @"Sh", @"Sm", @"St", @"Th", @"Ps", @"Ph", @"Pl", @"Gl"];
    
    NSArray *consonants = @[@"B",@"C",@"D",@"F",@"G",@"H",@"J",@"K",@"L",@"M",@"N",@"P",@"Q",@"R",@"S",@"T",@"V",@"W",@"X",@"Y",@"Z"];

    if([clusters containsObject:[[self substringToIndex:2] capitalizedString]]) {
        return [NSString stringWithFormat: @"%@%@ay", [self substringFromIndex:2], [self substringToIndex:2]];
    } else if([consonants containsObject:[[self substringToIndex:1] capitalizedString]]) {
        return [NSString stringWithFormat: @"%@%@ay", [self substringFromIndex:1], [self substringToIndex:1]];
    }
  
    return self;
    
}

@end
