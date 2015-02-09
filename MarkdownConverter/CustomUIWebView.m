//
//  CustomUIWebView.m
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "CustomUIWebView.h"

@implementation CustomUIWebView

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    [self loadHTMLString:textView.text baseURL:nil];
    
    NSString *url = [self.parser extractString:textView.text start:@"[http://" skip:0 end:@"]"];
    
    if (url)
    {
        textView.text = [textView.text stringByReplacingOccurrencesOfString:url withString:[self.parser parseSnippet:url]];
    }
    
    return YES;
}

@end
