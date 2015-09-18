//
//  ChallengeUI_3.h
//  iOS_traning
//
//  Created by takuji funao on 2015/09/18.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

@import UIKit;

@interface ChallengeUI_3 : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *challengeSeg;
@property (weak, nonatomic) IBOutlet UILabel *changeLabel;
@property (weak, nonatomic) IBOutlet UISlider *challengeSlide;
@property (weak, nonatomic) IBOutlet UISwitch *challengeSwitch;


- (void)ChallengeUISegment;
- (void)ChallengeSlider;
- (void)ChallengeSwitch;


@end
