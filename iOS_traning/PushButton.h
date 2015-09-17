//
//  PushButton.h
//  iOS_traning
//
//  Created by takuji funao on 2015/09/11.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

@import UIKit;

@interface PushButton : UIViewController <UITextFieldDelegate>

    @property (nonatomic, strong) IBOutlet UILabel *mynameLabel;
    @property (nonatomic, strong) IBOutlet UILabel *textInputLabel;
    @property (nonatomic, strong) IBOutlet UITextField *textInput;


@end
