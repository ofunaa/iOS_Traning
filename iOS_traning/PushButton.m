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
        
        _mynameLabel.text = @"Hello world!";
        
        _textInputLabel.text = @"Hello world!!!!!!!!!!";
    
    }

    - (IBAction)buttonTapped:(id)sender{
    
        _mynameLabel.text = @"takuji funao";
    
    }

    - (IBAction)inputButtonTapped:(id)sender{
    
        NSString* input_text = [[NSString alloc] init];
        
        input_text = _textInput.text;
        
        _textInputLabel.text = input_text;
    
    }


    - (BOOL)textFieldShouldReturn:(UITextField *)textInput {
    
        [textInput resignFirstResponder];
        
        return YES;
    
    }

@end
