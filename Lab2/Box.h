//
//  Box.h
//  Lab2
//
//  Created by Adriano Gaiotto de Oliveira on 2021-02-23.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Box : NSObject
    
@property float height;
@property float width;
@property float length;

// public methods
//- (instancetype)initWithName:(NSString *) name AndAge:(float) age;
//- (BOOL) canDateAPersonWithAge:(float) age;

- (instancetype)initWithHeight:(float) height AndWidth: (float) width AndLength: (float) length;
- (float) calcVolume: (float) height And:(float) width And: (float) length;
- (float) calcBoxInsideAnother: (float) height And:(float) width And: (float) length;

@end

NS_ASSUME_NONNULL_END
