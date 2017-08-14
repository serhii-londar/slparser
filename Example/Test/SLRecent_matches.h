
#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

@class  SLLeague, SLRadiant_team, SLDire_team;


/**======= <#description#> ========*/
@interface SLRecent_matches : SLBaseParserModel

/** <#description#> */
@property (nonatomic, strong) SLLeague * league;

/** <#description#> */
@property (nonatomic, assign) NSInteger  spectators;

/** <#description#> */
@property (nonatomic, assign) NSInteger  dire_score;

/** <#description#> */
@property (nonatomic, strong) SLRadiant_team * radiant_team;

/** <#description#> */
@property (nonatomic, assign) NSInteger  Id;

/** <#description#> */
@property (nonatomic, strong) SLDire_team * dire_team;

/** <#description#> */
@property (nonatomic, assign) NSInteger  duration;

/** <#description#> */
@property (nonatomic, assign) NSInteger  radiant_score;

/** <#description#> */
@property (nonatomic, assign) NSInteger  streams;

/** <#description#> */
@property (nonatomic, assign) NSInteger  time_started;

@end
