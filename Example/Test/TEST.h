
#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

@class  SLFinished_matches, SLRecent_matches, SLEnhanced_matches;


/**======= <#description#> ========*/
@interface TEST : SLBaseParserModel

/** <#description#> */
@property (nonatomic, assign) NSInteger  api_downtime;

/** <#description#> */
@property (nonatomic, strong) NSArray* finished_matches;

/** <#description#> */
@property (nonatomic, strong) NSArray* recent_matches;

/** <#description#> */
@property (nonatomic, assign) NSInteger  version;

/** <#description#> */
@property (nonatomic, strong) NSArray* enhanced_matches;

@end
