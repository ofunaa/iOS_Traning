//
//  ChallengeUI_3.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/18.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI_3.h"

@interface ChallengeUI_3 ()



@end

@implementation ChallengeUI_3


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self ChallengeUISegment];
    
    [self ChallengeSlider];
    
    [self ChallengeSwitch];

}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];

}

- (void)ChallengeUISegment{
    
    self.challengeSeg.selectedSegmentIndex = 2;
    
    [_challengeSeg addTarget:self action:@selector(changeSeg:)forControlEvents:UIControlEventValueChanged];
}

- (void)changeSeg:(UISegmentedControl*)seg{
    
    switch (seg.selectedSegmentIndex) {
            
        case 0:
            
            _changeLabel.text = @"０だぜ！";
            break;
        
        case 1:
            
            _changeLabel.text = @"1だ!";
            break;
            
        case 2:
            
            _changeLabel.text = @"２かな!";
            break;
            
        default:
            
            break;
    
    }
    
    return;

}

- (void)ChallengeSlider{
    
    _challengeSlide.minimumValue = 0.0;
    
    _challengeSlide.maximumValue = 300.0;
    
    _challengeSlide.value = 150.0;
    
    [_challengeSlide addTarget:self action:@selector(changeSlide:)forControlEvents:UIControlEventValueChanged];
    
}

- (void)changeSlide:(UISlider *)slider{
    
    NSLog(@"value:%f", slider.value);
    
    if (slider.value <= 100.0) {
    
        _changeLabel.text = @"0かな!";
    
    }else if(slider.value <= 200.0){
    
        _changeLabel.text = @"1かな!";
    
    }else{
    
        _changeLabel.text = @"２かな!";
    
    }
    
    return;

}


- (void)ChallengeSwitch{
    
    _challengeSwitch.on = YES;
    
    [_challengeSwitch addTarget:self action:@selector(changeSwitch:)forControlEvents:UIControlEventValueChanged];
    
}

- (void)changeSwitch:(UISwitch*)switcher{
    
    if (switcher.on == 0) {
    
        NSLog(@"offになったよ");
        
        _changeLabel.text = @"offかな!";
    
    }else{
    
        NSLog(@"onになったよ");
        
        _changeLabel.text = @"on!!!!!!!";
    
    }
    
}


@end


