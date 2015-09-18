//
//  chukyu_01.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/18.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "chukyu_01.h"

@interface chukyu_01 ()
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation chukyu_01

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)tapGesture:(id)sender {
    
    [self useNSMutableDictionary];
    
}

- (void)useNSArray{
    NSArray* newNSArray = @[@"はじめまして",@"こんにちは",@"こんばんは",@"久しぶり！",@"元気かい？",@"わっしょい"];
    int arrayCount = (int)newNSArray.count;
    int randCount = arc4random() % arrayCount;
    NSLog(@":%d",randCount);
    
    _label.text = newNSArray[randCount];
    
    return;
}

- (void)useNSMutableArray{
    NSMutableArray* newNSMutalbeArray = [@[@"1"] mutableCopy];
    for (int i=2; i < 10; i++) {
        NSString *x = [NSString stringWithFormat:@"%d", i];
        [newNSMutalbeArray addObject: x];
    }
    
    int arrayCount = (int)newNSMutalbeArray.count;
    int randCount = arc4random() % arrayCount;
    NSLog(@":%d",randCount);
    
    _label.text = newNSMutalbeArray[randCount];
    
    return;
}

- (void)useNSDictionary{
    NSDictionary *newDic = @{@"key1":@"わたがし",
                             @"key2":@"りんごあめ",
                             @"key3":@"じゃがばた"};
    
    int arrayCount = (int)newDic.count;
    int randCount = arc4random() % arrayCount + 1;
    
    NSString * key = @"key";
    NSString * x = [NSString stringWithFormat:@"%d", randCount];
    NSString * mergeStr = [key stringByAppendingString:x];
    
    _label.text = newDic[mergeStr];
}

- (void)useNSMutableDictionary{
    NSMutableDictionary *newMutableDic = [@{@"key4":@"串カツ",
                                            @"key5":@"焼き鳥",
                                            @"key6":@"ビール"}
                                          mutableCopy];
    
    [newMutableDic setObject:@"花火" forKey:@"key7"];
    int arrayCount = (int)newMutableDic.count;
    int randCount = arc4random() % arrayCount + 4;
    
    NSString * key = @"key";
    NSString * x = [NSString stringWithFormat:@"%d", randCount];
    NSString * mergeStr = [key stringByAppendingString:x];
    
    _label.text = newMutableDic[mergeStr];

}

@end






