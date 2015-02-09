//
//  CustomUITextView.h
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomUITextView : UITextView

@property (nonatomic, weak) id<UITextViewDelegate> delegate;

@end
