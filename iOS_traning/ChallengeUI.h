//
//  ChallengeUI.h
//  iOS_traning
//
//  Created by takuji funao on 2015/09/12.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

@import UIKit;

@interface ChallengeUI : UIViewController

@property (nonatomic, strong) IBOutlet UIDatePicker *datePicker;
@property (nonatomic, strong) IBOutlet UIImageView *imageView;


-(void) challengeUIImageView;

-(void) challengeUIDatePicker;

-(void) challengeUIActivityIndicatorView;

-(void) challengeUIActionSheet;

-(void) challengeUIDevise;

-(void) challengeUIApplication;


@end
