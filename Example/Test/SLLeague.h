
#import <Foundation/Foundation.h>
#import "SLBaseParserModel.h"

/**======= <#description#> ========*/
@interface SLLeague : SLBaseParserModel

/** <#description#> */
@property (nonatomic, assign) NSInteger  tier;

/** <#description#> */
@property (nonatomic, assign) NSInteger  Id;

/** <#description#> */
@property (nonatomic, copy) NSString* url;

/** <#description#> */
@property (nonatomic, assign) NSInteger  image;

/** <#description#> */
@property (nonatomic, copy) NSString* name;

@end
