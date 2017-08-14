
#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

@class  SLRadiant_team, SLDire_team, SLDiff_gold, SLLeague, SLDiff_xp;


/**======= <#description#> ========*/
@interface SLGames : SLBaseParserModel

/** <#description#> */
@property (nonatomic, assign) NSInteger  started;

/** <#description#> */
@property (nonatomic, assign) NSInteger  status;

/** <#description#> */
@property (nonatomic, assign) NSInteger  duration;

/** <#description#> */
@property (nonatomic, strong) SLRadiant_team * radiant_team;

/** <#description#> */
@property (nonatomic, assign) NSInteger  spectators;

/** <#description#> */
@property (nonatomic, assign) NSInteger  tower_state;

/** <#description#> */
@property (nonatomic, strong) SLDire_team * dire_team;

/** <#description#> */
@property (nonatomic, strong) NSArray* diff_gold;

/** <#description#> */
@property (nonatomic, assign) NSInteger  radiant_score;

/** <#description#> */
@property (nonatomic, assign) NSInteger  streams;

/** <#description#> */
@property (nonatomic, assign) NSInteger  series_type;

/** <#description#> */
@property (nonatomic, assign) NSInteger  radiant_series_wins;

/** <#description#> */
@property (nonatomic, assign) NSInteger  time_started;

/** <#description#> */
@property (nonatomic, assign) NSInteger  Id;

/** <#description#> */
@property (nonatomic, strong) NSArray* stream_providers;

/** <#description#> */
@property (nonatomic, assign) NSInteger  dire_series_wins;

/** <#description#> */
@property (nonatomic, strong) SLLeague * league;

/** <#description#> */
@property (nonatomic, assign) NSInteger  barracks_state;

/** <#description#> */
@property (nonatomic, strong) NSArray* diff_xp;

/** <#description#> */
@property (nonatomic, assign) NSInteger  dire_score;

/** <#description#> */
@property (nonatomic, assign) NSInteger  featured;

@end
