//
//  Box.m
//  Lab2
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import "Box.h"

@implementation Box{}
    
    
- (instancetype)initWithHeight: (float) height AndWidth: (float) width AndLength: (float) length{
      self = [super init];
      if (self) {
          [self setHeight: height];
          [self setWidth: width];
          [self setLength: length];
      }
      return self;
}

- (float) calcVolume: (float) height And:(float) width And: (float) length {
    
    return height * width * length;
}

- (float) calcBoxInsideAnother: (float) height And:(float) width And: (float) length {
    
    float mainBox = [self calcVolume:[self height] And:[self width] And:[self length]];
    
    float newBox = [self calcVolume:height And:width And:length];
    
    return (mainBox > newBox) ? mainBox / newBox : newBox / mainBox;
}
@end
