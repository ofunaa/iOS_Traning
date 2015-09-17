//
//  ChallengeUI_2.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/14.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI_2.h"

#define pageCount 3

@implementation ChallengeUI_2




- (void)viewDidload{
    [self ChallengeUIScrollView];
//    [self ChallengeUINavigation];
//    [self ChallengeUIPageControl];
//    [self ChallengeUIPickerView];
//    [self ChallengeUIProgress];
    
}


- (IBAction)pageControl:(id)sender {
    
    CGRect frame = _scrollView.frame;
    
    frame.origin.x = frame.size.width * _pageControl.currentPage;
    
    frame.origin.y = 0;
    
    [_scrollView scrollRectToVisible:frame animated:YES];

}


- (void)scrollViewDidScroll:(UIScrollView *)sender{
    
    CGFloat pageWidth = _scrollView.frame.size.width;
    
    _pageControl.currentPage = floor((_scrollView.contentOffset.x - pageWidth / 2) / pageWidth ) + 1;

}


- (IBAction)ChallengeUITapGesture:(id)sender {
    
    NSLog(@"aaa");

}


- (void)ChallengeUIScrollView{
    
    _scrollView.pagingEnabled = YES;
    
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width * pageCount, self.scrollView.frame.size.height);
    
    for (int i = 0; i < pageCount; i++) {
    
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i * _scrollView.frame.size.width, _scrollView.frame.size.height/2, _scrollView.frame.size.width, _scrollView.frame.size.height)];
        
        label.text = [NSString stringWithFormat:@"%d", i + 1];
        
        label.font = [UIFont fontWithName:@"Arial" size:92];
        
        label.backgroundColor = [UIColor yellowColor];
        
        label.textAlignment = NSTextAlignmentCenter;
        
        [_scrollView addSubview:label];
    
    }
    
    _scrollView.showsHorizontalScrollIndicator = NO;
    
    _scrollView.showsVerticalScrollIndicator = NO;
    
    _pageControl.numberOfPages = pageCount;
    
    _pageControl.currentPage = 0;

}

- (void)ChallengeUIPickerView{
    
}

- (void)ChallengeUIProgress{
    
}

- (void)ChallengeUINavigation{
    
}

@end
