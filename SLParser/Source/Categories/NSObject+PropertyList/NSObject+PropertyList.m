//
//  NSObject+PropertyList.m
//  SLParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import "NSObject+PropertyList.h"
#import "objc/runtime.h"

@implementation NSObject (PropertyList)

+ (NSArray *)propertiesArray {
    if ([self class] == NULL) {
        return nil;
    }
    NSMutableArray *results = [[NSMutableArray alloc] init];
    unsigned int outCount, i;
    objc_property_t *properties = class_copyPropertyList([self class], &outCount);
    for (i = 0; i < outCount; i++) {
        objc_property_t property = properties[i];
        const char *propName = property_getName(property);
        if(propName) {
            [results addObject:[NSString stringWithUTF8String:propName]];
        }
    }
    free(properties);
    return results;
}

+ (NSSet *)propertiesSet {
    return [NSSet setWithArray:[self propertiesArray]];
}

@end
