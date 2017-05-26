//
//  NSString+Language.m
//  RTL Testing
//
//  Created by Faraz Haider on 5/26/17.
//  Copyright © 2017 Faraz Haider. All rights reserved.
//

#import "NSString+Language.h"
#import "NSBundle+Language.h"
@implementation NSString (Language)

- (NSString *)localize{
    NSString *bundle = [[NSBundle mainBundle]pathForResource:[self currentLanguage] ofType:@"lproj"];
    NSBundle *langBundle = [[NSBundle alloc]initWithPath:bundle];
    return NSLocalizedStringFromTableInBundle(self, nil, langBundle, @"");
}

- (NSString *)currentLanguage{
    NSArray *array = [[NSUserDefaults standardUserDefaults]objectForKey:@"AppleLanguages"];
    NSString *language = array[0];
    return language;
}

@end
