//
//  SLModelParser.h
//  SLModelParser
//
//  Created by Serhii Londar on 2/13/16.
//  Copyright © 2016 Serhii Londar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

@interface SLModelParser : NSObject

+ (SLModelParser *)sharedParser;

- (void)registerClass:(Class)class;
- (void)unregisterClass:(Class)class;

- (id)getModelFromDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)getDictionaryFromModel:(SLBaseParserModel *)model;

@end
