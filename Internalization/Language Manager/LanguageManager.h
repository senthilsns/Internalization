//
//  LanguageManager.h
//  Internalization
//
//  Created by appledeveloper on 01/04/19.
//  Copyright © 2019 Senthilkumar K. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LanguageManager : NSObject

+(NSString *)languageKey;
+(NSString *)localizedStringForKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
