//
//  SLBaseParserModel.h
//  SLParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SLModelParser;

@interface SLBaseParserModel : NSObject {
    NSSet *_propertyNamesArray;
}

- (NSDictionary *)creteDictionaryWithParser:(SLModelParser *)parser;
- (instancetype)initWithDictionary:(NSDictionary *)ditionary parser:(SLModelParser *)parser;

+ (BOOL)canParseDictionary:(NSDictionary *)dictionary;

+ (NSDictionary *)modelToJSONMappingDictionary;

@end
