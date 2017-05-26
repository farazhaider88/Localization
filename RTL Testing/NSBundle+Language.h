//
//  NSBundle+Language.h
//  RTL Testing
//
//  Created by Faraz Haider on 5/26/17.
//  Copyright © 2017 Faraz Haider. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSBundle (Language)
- (void)setLanguage:(NSString *)language;
- (BOOL)isLanguageRTL:(NSString *)languageCode;
@end
