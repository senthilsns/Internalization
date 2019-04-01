//
//  LanguageManager.m
//  Internalization
//
//  Created by appledeveloper on 01/04/19.
//  Copyright © 2019 Senthilkumar K. All rights reserved.
//

#import "LanguageManager.h"

@implementation LanguageManager

+(NSString *)languageKey{
    
    NSArray *languages = [[NSUserDefaults standardUserDefaults] objectForKey:@"AppleLanguages"];
    NSString *lang = [languages objectAtIndex:0];
    
    if([lang isEqualToString:@"en"])
        return @"en";
    else if([lang isEqualToString:@"es"])
        return @"es";
    
    return @"en";
}
+(NSString *)localizedStringForKey:(NSString *)key{
    
    NSString *path;
    
    if([[self languageKey] isEqualToString:@"en"])
        path = [[NSBundle mainBundle] pathForResource:@"en" ofType:@"lproj"];
    else if([[self languageKey] isEqualToString:@"es"])
        path = [[NSBundle mainBundle] pathForResource:@"es" ofType:@"lproj"];
    
    NSBundle* languageBundle = [NSBundle bundleWithPath:path];
    NSString* str=[languageBundle localizedStringForKey:key value:@"" table:nil];
    
    return str;
}

@end
