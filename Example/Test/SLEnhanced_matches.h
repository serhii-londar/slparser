
#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

@class  SLGames;


/**======= <#description#> ========*/
@interface SLEnhanced_matches : SLBaseParserModel

/** <#description#> */
@property (nonatomic, assign) NSInteger  tier;

/** <#description#> */
@property (nonatomic, assign) NSInteger  Id;

/** <#description#> */
@property (nonatomic, strong) NSArray* games;

/** <#description#> */
@property (nonatomic, assign) NSInteger  image;

/** <#description#> */
@property (nonatomic, copy) NSString* url;

/** <#description#> */
@property (nonatomic, copy) NSString* name;

@end
