//
//  TwoTextView.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/11.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "TwoTextView.h"

@implementation TwoTextView

- (void)viewDidLoad {
    [super viewDidLoad];
    NSString * content = [[NSString alloc] init];
    content = self.firstTextView.text;
    self.secondTextView.text = content;
}

@end
