//
//  ChallengeUI.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/12.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI.h"

@implementation ChallengeUI

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self challengeUIImageView];
    [self challengeUIDatePicker];
    [self challengeUIActivityIndicatorView];
    [self challengeUIDevise];
    
    
    //実装済みの機能
    //[self challengeUIApplication];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    //実装済みの機能
    //[self challengeUIActionSheet];
    
}



//UIImageView - 画像の表示・編集・アニメーション

- (void)challengeUIImageView{
    
    UIImageView* myImage = _imageView;
    
    myImage.image = [UIImage imageNamed:@"1.png"];

    // アニメーション用画像を配列にセット
    NSMutableArray *imageList = [NSMutableArray array];
    
    for (NSInteger i = 1; i < 4; ++i) {
    
        NSString *imagePath = [NSString stringWithFormat:@"%1d.png", (int)i];
        
        UIImage *img = [UIImage imageNamed:imagePath];
        
        [imageList addObject:img];
    
    }
    
    // アニメーション用画像をセット
    myImage.animationImages = imageList;
    
    // アニメーションの速度
    myImage.animationDuration = 10;
    
    // アニメーションのリピート回数
    myImage.animationRepeatCount = 1;
    
    [myImage startAnimating];

}


//UIDatePicker - 日付・時刻の選択

- (void)challengeUIDatePicker{
    
    UIDatePicker* myPicker = _datePicker;
    
    myPicker.datePickerMode = UIDatePickerModeDateAndTime;
    
    myPicker.minuteInterval = 10;
    
    [myPicker addTarget:self
                 action:@selector(datePicker_ValueChanged:)
       forControlEvents:UIControlEventValueChanged];
}

- (void)datePicker_ValueChanged:(id)sender{
    
    UIDatePicker* myPicker = _datePicker;
    
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    
    df.dateFormat = @"yyyy/MM/dd HH:mm";
    
    NSLog(@"%@", [df stringFromDate:myPicker.date]);

}




//UIActivityIndicatorView - アクティビティインジケータ

- (void)challengeUIActivityIndicatorView{
    
    CGRect rect = CGRectMake(0, 0, 100, 100);
    
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithFrame:rect];
    
    indicator.center = _view.center;
    
    indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    [_view addSubview:indicator];
    
    [indicator startAnimating];
    
}




//UIAlertController - ユーザーへの選択肢表示

- (void)challengeUIActionSheet{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert"
                                                                             message:@"iOS8"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"はい"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction *action) {[self otherButtonPushed];}]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"いいえ"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction *action) {[self cancelButtonPushed];}]];
    
    [self presentViewController:alertController
                       animated:YES
                     completion:nil];

}

- (void)cancelButtonPushed {}
- (void)otherButtonPushed {}




//UIDevice - 端末（デバイス）情報
- (void)challengeUIDevise {
    
    // 現在のデバイスを取得する
    NSString *model = [UIDevice currentDevice].model;
    
    NSLog(@"現在のデバイスは%@です。", model);
    
    // OS名を取得する
    NSString *osName = [UIDevice currentDevice].systemName;
    
    NSLog(@"OS: %@", osName);
    
    // OSのバージョンを取得する
    NSString *osVersion = [UIDevice currentDevice].systemVersion;
    
    NSLog(@"Ver: %@", osVersion);
    
    // バッテリー残量の表示
    UIDevice *device = [UIDevice currentDevice];
    
    device.batteryMonitoringEnabled = YES;
    
    float battery = device.batteryLevel;
    
    NSLog(@"%f", battery);
    
}




//UIApplication - アプリケーション
- (void)challengeUIApplication {
    
    // バッジの表示
    UIApplication *application = [UIApplication sharedApplication];
    
    application.applicationIconBadgeNumber = 10;
    
    // インジケーターの表示/非表示
    UIApplication *app = [UIApplication sharedApplication];
    
    app.networkActivityIndicatorVisible = YES;
    
    // ブラウザを開く
    NSString *urlString = @"http://www.google.co.jp";
    
    NSURL *url = [NSURL URLWithString:urlString];
    
    [[UIApplication sharedApplication] openURL:url];

}




@end







//UIScrollView - スクロール
//UISegmentedControl - 複数の選択肢から一つを選択
//UISlider - スライダー
//UISwitch - ON/OFFを切り替えるスイッチ
//UITabBarController - タブバーによる画面の切り替え
//UITableViewController - テーブル
//UIWebView - Webページの表示