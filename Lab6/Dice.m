//
//  Dice.m
//  Lab6
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-28.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init {
    if (self = [super init]) {
        _isHold = false;
    }
    return self;
}


- (NSString *)description
{
    if (_isHold) {
        return [NSString stringWithFormat:@"[%@]", _label];
    } else {
        return [NSString stringWithFormat:@"%@", _label];
    }
}

@end
