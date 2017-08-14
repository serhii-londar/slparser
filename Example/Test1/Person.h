//
//  Person.h
//  Example
//
//  Created by Serhii Londar on 8/15/17.
//  Copyright © 2017 slon. All rights reserved.
//

#import <SLParser/SLParser.h>
@class Avatars;

@interface Person : SLBaseParserModel

@property (nonatomic, strong) NSString*   first_name;
@property (nonatomic, strong) NSString*   last_name;
@property (nonatomic, strong) NSString*   user_id;
@property (nonatomic, strong) NSNumber*   age;
@property (nonatomic, strong) Avatars*    avatars;

@end
