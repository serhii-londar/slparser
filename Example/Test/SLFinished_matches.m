#import "SLFinished_matches.h"
#import "SLLeague.h"
#import "SLRadiant_team.h"
#import "SLDire_team.h"

@implementation SLFinished_matches
+ (NSDictionary *)modelToJSONMappingDictionary {
    return @{
             @"Id" : @"id"
             };
}
@end
