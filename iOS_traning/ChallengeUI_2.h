//
//  ChallengeUI_2.h
//  iOS_traning
//
//  Created by takuji funao on 2015/09/14.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

@import UIKit;

@interface ChallengeUI_2 : UIViewController <UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;


- (IBAction)pageControl:(id)sender;

- (void)scrollViewDidScroll:(UIScrollView *)scrollView;

- (IBAction)ChallengeUITapGesture:(id)sender;

- (void)ChallengeUIScrollView;

- (void)ChallengeUINavigation;

- (void)ChallengeUIPickerView;

- (void)ChallengeUIProgress;

@end
