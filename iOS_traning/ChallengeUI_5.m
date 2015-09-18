//
//  ChallengeUI_5.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/18.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI_5.h"

@interface ChallengeUI_5 ()

@property (weak, nonatomic) IBOutlet UILabel *labels;

@end

@implementation ChallengeUI_5

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _labels.text = @"aaaaaaaaaaaaaa";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

