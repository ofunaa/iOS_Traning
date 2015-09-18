//
//  ChallengeUI_2.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/14.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI_2.h"

@implementation ChallengeUI_2


- (void)viewDidLoad{
    
    [super viewDidLoad];
    
    [self.view addSubview:_pageControl];
    
    self.scrollView.delegate = self;
    
    [_pageControl addTarget:self action:@selector(pageControl:) forControlEvents:UIControlEventValueChanged];
    
}

- (void)viewDidAppear:(BOOL)animated{
    
    [self ChallengeUIScrollView];
    
}


- (IBAction)ChallengeUITapGesture:(id)sender {
    
    NSLog(@"aaa");

}


- (void)ChallengeUIScrollView{
    
    _scrollView.pagingEnabled = YES;
    
    int pageCount = 5;
    
    _scrollView.contentSize = CGSizeMake(_scrollView.frame.size.width * pageCount, self.scrollView.frame.size.height);
    
    for (int i = 0; i < pageCount; i++) {
    
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(i * _scrollView.frame.size.width, 0, _scrollView.frame.size.width , _scrollView.frame.size.height)];
        
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


- (IBAction)pageControl:(id)sender {
    
    CGRect frame = _scrollView.frame;
    
    frame.origin.x = frame.size.width * _pageControl.currentPage;
    
    frame.origin.y = 0;
    
    [_scrollView scrollRectToVisible:frame animated:YES];
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGFloat pageWidth = scrollView.frame.size.width;
    if ((NSInteger)fmod(scrollView.contentOffset.x , pageWidth) == 0) {
        // ページコントロールに現在のページを設定
        _pageControl.currentPage = scrollView.contentOffset.x / pageWidth;
    }
    
}


- (void)ChallengeUIPickerView{
    
}

- (void)ChallengeUIProgress{
    
}

- (void)ChallengeUINavigation{
    
}

@end

//UISegmentedControl - 複数の選択肢から一つを選択
//UISlider - スライダー
//UISwitch - ON/OFFを切り替えるスイッチ
//UITabBarController - タブバーによる画面の切り替え
//UITableViewController - テーブル
//UIWebView - Webページの表示
