# SLParser

Json to model parser for iOS and OS X implemented with Runtime.

## Getting Started



### Example
Assume you have json with the following structure:

```
{
  "first_name": "Bob",
  "last_name": "Lol",
  "user_id": "bob-lol",
  "age": 98.3214234,
  "avatars": {
    "avatar_750x227": "dasdasdasd",
    "small_url": "dasdasd",
    "medium_url": "dasdasdas"
  }
}
```

To parse this, you need to create two classes:

#### Person:
```
#import <SLParser/SLParser.h>
@class Avatars;

@interface Person : SLBaseParserModel

@property (nonatomic, strong) NSString*   first_name;
@property (nonatomic, strong) NSString*   last_name;
@property (nonatomic, strong) NSString*   user_id;
@property (nonatomic, strong) NSNumber*   age;
@property (nonatomic, strong) Avatars*    avatars;

@end
```

#### Avatars:
```
#import <SLParser/SLParser.h>

@interface Avatars : SLBaseParserModel
@property (nonatomic, strong) NSString*   avatar_750x227;
@property (nonatomic, strong) NSString*   small_url;
@property (nonatomic, strong) NSString*   medium_url;
@end
```

Next step is to create a parser object and register all the types that it will be able to parse:

```
SLModelParser *parser = [[SLModelParser alloc] init];
[parser registerClass:[Person class]];
[parser registerClass:[Avatars class]];
```

Then you can use it in the following way for parsing json into model:

```
NSDictionary *json = ... // From network, from file...

Person *person = [parser getModelFromDictionary:json1];
```

Also, you can use it in order to get json from model object:

```
NSDictionary *modelDictionary = [parser getDictionaryFromModel:person];
```


### Installing

You can add this library via cocoapods:

```
pod 'SLParser'
```

And then run:

```
pod install
```

## Authors

* **[Serhii Londar](https://github.com/serhii-londar)**


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

