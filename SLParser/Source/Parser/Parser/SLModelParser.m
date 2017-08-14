//
//  SLModelParser.m
//  SLModelParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import "SLModelParser.h"
#import "SLBaseParserModel.h"

@interface SLModelParser() {
    NSMutableArray *_typeNamesArray;
}

@end

@implementation SLModelParser

+ (SLModelParser *)sharedParser {
    static SLModelParser *sharedParser = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedParser = [SLModelParser new];
    });
    return sharedParser;
}

- (instancetype)init {
    if (self = [super init]) {
        _typeNamesArray = [NSMutableArray new];
    }
    return self;
}


- (void)registerClass:(Class)class {
    [_typeNamesArray addObject:NSStringFromClass(class)];
}

- (void)unregisterClass:(Class)class {
    [_typeNamesArray removeObject:NSStringFromClass(class)];
}

- (id)getModelFromDictionary:(NSDictionary *)dictionary {
    id retModel = nil;
    
    for (NSString *typeName in _typeNamesArray) {
        if ([NSClassFromString(typeName) canParseDictionary:dictionary] == YES) {
            retModel = [[NSClassFromString(typeName) alloc] initWithDictionary:dictionary parser:self];
            break;
        } else {
            
        }
    }
    if (retModel == nil) {
        retModel = [SLBaseParserModel new];
    }
    return retModel;
}

- (NSDictionary *)getDictionaryFromModel:(SLBaseParserModel *)model {
    NSAssert([_typeNamesArray containsObject:NSStringFromClass([model class])], @"Parser can't parse this model, because it is unregistered");
    return [model creteDictionaryWithParser:self];
}

@end
