//
//  PushButton.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/11.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "PushButton.h"

@implementation PushButton

    - (void)viewDidLoad {
        [super viewDidLoad];
        self.mynameLabel.text = @"Hello world!";
        self.textInputLabel.text = @"Hello world!!!!!!!!!!";
        
        self.textInput.delegate = self;
    }

    - (IBAction)buttonTapped:(id)sender{
        self.mynameLabel.text = @"takuji funao";
    }

    - (IBAction)inputButtonTapped:(id)sender{
        NSString* input_text = [[NSString alloc] init];
        input_text = self.textInput.text;
        self.textInputLabel.text = input_text;
    }


    - (BOOL)textFieldShouldReturn:(UITextField *)textInput {
        [textInput resignFirstResponder];
        return YES;
    }

@end
