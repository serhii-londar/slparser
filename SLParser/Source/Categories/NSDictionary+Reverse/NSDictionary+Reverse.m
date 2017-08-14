//
//  NSDictionary+Reverse.m
//  SLParser
//
//  Created by Serhii Londar on 2/15/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import "NSDictionary+Reverse.h"

@implementation NSDictionary (Reverse)

- (NSDictionary *)reverseDictionary {
    NSMutableDictionary *retDictionary = [NSMutableDictionary new];
    
    for (NSString *key in [self allKeys]) {
        [retDictionary setValue:key forKey:self[key]];
    }
    
    return retDictionary;
}

@end
