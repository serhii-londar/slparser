#import "SLRecent_matches.h"
#import "SLLeague.h"
#import "SLRadiant_team.h"
#import "SLDire_team.h"

@implementation SLRecent_matches
+ (NSDictionary *)modelToJSONMappingDictionary {
    return @{
             @"Id" : @"id"
             };
}
@end
