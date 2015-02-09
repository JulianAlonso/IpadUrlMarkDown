//
//  UrlParser.m
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "UrlParser.h"

@implementation UrlParser

- (NSString *)parseSnippet:(NSString *)snippet
{
    NSString *web = [self extractString:snippet start:@"www." skip:4 end:@".com"];
    NSString *urlName = [self extractName:snippet start:@"www." end:@".com"];
    
    NSString *parsed = [NSString stringWithFormat:@"<a href='http://%@'>%@</a>",web, urlName];
    
    return parsed;
}

- (NSString *)extractString:(NSString *)string start:(NSString *)start skip:(NSInteger)skip end:(NSString *)end
{
    
    NSRange firstRange = [string rangeOfString:start];
    
    if (firstRange.location != NSNotFound) {
        NSRange secondRange = [[string substringFromIndex:firstRange.location + skip] rangeOfString:end];
        if (secondRange.location != NSNotFound){
            NSRange finalRange = NSMakeRange(firstRange.location + skip, secondRange.location + [end length]);
            return [string substringWithRange:finalRange];
        }
    }
    
    return nil;
}

- (NSString *)extractName:(NSString *)url start:(NSString *)start end:(NSString *)end
{
    
    NSRange firstRange = [url rangeOfString:start];
    
    NSUInteger skip = 0;
    if ([url containsString:@"www"])
    {
        skip = @"www.".length;
    }
    
    
    if (firstRange.location != NSNotFound) {
        NSRange secondRange = [[url substringFromIndex:firstRange.location + skip] rangeOfString:end];
        if (secondRange.location != NSNotFound){
            NSRange finalRange = NSMakeRange(firstRange.location + skip, secondRange.location);
            return [url substringWithRange:finalRange];
        }
    }
    
    return nil;
}

@end
