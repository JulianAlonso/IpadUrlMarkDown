//
//  CustomUIWebView.h
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUITextView.h"
#import "UrlParser.h"

@interface CustomUIWebView : UIWebView <UITextViewDelegate>

@property (nonatomic, strong) CustomUITextView *textView;
@property (nonatomic, strong) id<Parser> parser;

@end
