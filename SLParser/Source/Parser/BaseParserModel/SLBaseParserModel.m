//
//  SLBaseParserModel.m
//  SLParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import "SLBaseParserModel.h"
#import "NSObject+PropertyList.h"
#import "NSDictionary+Reverse.h"
#import "SLModelParser.h"

#define VALID(value) (value != nil)

@implementation SLBaseParserModel

- (instancetype)init {
    if (self = [super init]) {
        _propertyNamesArray = [[self class] propertiesSet];
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary parser:(SLModelParser *)parser{
    if (self = [super init]) {
        _propertyNamesArray = [[self class] propertiesSet];
        if (VALID(dictionary) && [dictionary isKindOfClass:[NSNull class]] == NO) {
            for (NSString *propertyName in _propertyNamesArray) {
                NSString *key = [[self class] JSONKeyForModelKey:propertyName];
                id modelValue;
                id dictionaryValue = dictionary[key];
                if ([dictionaryValue isKindOfClass:[NSArray class]] == YES) {
                    modelValue = [NSMutableArray new];
                    for (id objectFromArray in dictionaryValue) {
                        if ([objectFromArray isKindOfClass:[NSDictionary class]] == YES) {
                            [modelValue addObject:[parser getModelFromDictionary:objectFromArray]];
                        } else {
                            [modelValue addObject:objectFromArray];
                        }
                    }
                } else if ([dictionaryValue isKindOfClass:[NSDictionary class]] == YES) {
                    modelValue = [parser getModelFromDictionary:dictionaryValue];
                } else {
                    modelValue = dictionaryValue;
                }
                if (VALID(modelValue)) {
                    [self setValue:modelValue forKey:propertyName];
                }
            }
        }
    }
    return self;
}

- (NSDictionary *)creteDictionaryWithParser:(SLModelParser *)parser {
    NSMutableDictionary *retDictionary = [NSMutableDictionary new];
    for (NSString *property in _propertyNamesArray) {
        id modelValue = [self valueForKey:property];
        id dictionaryValue;
        if ([modelValue isKindOfClass:[NSArray class]] == YES) {
            dictionaryValue = [NSMutableArray new];
            for (id object in modelValue) {
                if ([object isKindOfClass:[SLBaseParserModel class]]) {
                    [dictionaryValue addObject:[object creteDictionaryWithParser:parser]];
                } else {
                    [dictionaryValue addObject:object];
                }
            }
        } else if ([modelValue isKindOfClass:[SLBaseParserModel class]] == YES) {
            dictionaryValue = [modelValue creteDictionaryWithParser:parser];
        } else {
            dictionaryValue = modelValue;
        }
        if (VALID(dictionaryValue)) {
            [retDictionary setValue:dictionaryValue forKey:[[self class] JSONKeyForModelKey:property]];
        }
    }
    return retDictionary;
}

+ (BOOL)canParseDictionary:(NSDictionary *)dictionary {
    BOOL retValue = YES;
    NSArray *_classPropertiesArray = [[self class] propertiesArray];
    for (NSString *dictionaryKey in [dictionary allKeys]) {
        if ([_classPropertiesArray containsObject:[[self class] modelKeyForJSONKey:dictionaryKey]] == NO) {
            retValue = NO;
            break;
        }
    }
    return retValue;
}

+ (NSString *)JSONKeyForModelKey:(NSString *)modelKey {
    NSString *JSONKey = [[self class] modelToJSONMappingDictionary][modelKey];
    if (JSONKey == nil ) {
        JSONKey = modelKey;
    }
    return JSONKey;
}

+ (NSString *)modelKeyForJSONKey:(NSString *)JSONKey {
    NSString *modelKey = [[[self class] modelToJSONMappingDictionary] reverseDictionary][JSONKey];
    if (modelKey == nil ) {
        modelKey = JSONKey;
    }
    return modelKey;
}

// mId --> _id or mId --> id
+ (NSDictionary *)modelToJSONMappingDictionary {
    return @{};
}

- (nullable id)objectForKey:(NSString *)key {
    if ([self respondsToSelector:@selector(key)]) {
        return [self performSelector:@selector(key)];
    } else {
        return nil;
    }
}

- (void)setObject:(id)object forKey:(NSString *)key {
    
}


@end
