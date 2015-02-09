//
//  UrlParser.h
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Parser <NSObject>

- (NSString *)parseSnippet:(NSString *)snippet;
- (NSString *)extractString:(NSString *)string start:(NSString *)start skip:(NSInteger)skip end:(NSString *)end;

@end

@interface UrlParser : NSObject



@end
