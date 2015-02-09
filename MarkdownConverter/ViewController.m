//
//  ViewController.m
//  MarkdownConverter
//
//  Created by Julian Alonso on 9/2/15.
//  Copyright (c) 2015 Julian Alonso. All rights reserved.
//

#import "ViewController.h"
#import "CustomUITextView.h"
#import "CustomUIWebView.h"
#import "UrlParser.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet CustomUITextView *textView;
@property (weak, nonatomic) IBOutlet CustomUIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.webView.parser = (id)[[UrlParser alloc] init];
    
    [self.textView setDelegate:self.webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
