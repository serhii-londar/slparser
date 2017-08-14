//
//  NSObject+PropertyList.h
//  SLParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyList)

+ (NSArray *)propertiesArray;
+ (NSSet *)propertiesSet;

@end
