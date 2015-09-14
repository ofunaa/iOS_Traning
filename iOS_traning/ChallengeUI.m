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
    
    [self challengeUIDatePicker];
    [self challengeUIActivityIndicatorView];
    [self challengeUIDevise];
//    [self challengeUIApplication];
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
    
    
//    [self challengeUIActionSheet];
    
}

///////////////////////////////////////////////////////
///////////////////////////////////////////////////////
///////////////////////////////////////////////////////

//UIDatePicker - 日付・時刻の選択

- (void)challengeUIDatePicker{
    
    UIDatePicker* myPicker = self.datePicker;
    
    myPicker.datePickerMode = UIDatePickerModeDateAndTime;
    myPicker.minuteInterval = 10;
    
    [myPicker addTarget:self
                 action:@selector(datePicker_ValueChanged:)
       forControlEvents:UIControlEventValueChanged];
}

- (void)datePicker_ValueChanged:(id)sender{
    
    UIDatePicker* myPicker = self.datePicker;
    NSDateFormatter *df = [[NSDateFormatter alloc]init];
    df.dateFormat = @"yyyy/MM/dd HH:mm";
    
    NSLog(@"%@", [df stringFromDate:myPicker.date]);
}


///////////////////////////////////////////////////////


//UIActivityIndicatorView - アクティビティインジケータ

- (void)challengeUIActivityIndicatorView{
    
    CGRect rect = CGRectMake(0, 0, 100, 100);
    UIActivityIndicatorView *indicator = [[UIActivityIndicatorView alloc]initWithFrame:rect];
    
    indicator.center = self.view.center;
    
    indicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
    
    [self.view addSubview:indicator];
    
    [indicator startAnimating];
}



///////////////////////////////////////////////////////


//UIAlertController - ユーザーへの選択肢表示

- (void)challengeUIActionSheet{
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"UIAlertControllerStyle.Alert" message:@"iOS8" preferredStyle:UIAlertControllerStyleAlert];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"はい" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self otherButtonPushed];
    }]];
    [alertController addAction:[UIAlertAction actionWithTitle:@"いいえ" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self cancelButtonPushed];
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}
- (void)cancelButtonPushed {}
- (void)otherButtonPushed {}


///////////////////////////////////////////////////////


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


///////////////////////////////////////////////////////


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


///////////////////////////////////////////////////////


@end






//UIImageView - 画像の表示・編集・アニメーション
//UILabel - 文字の表示（ラベル）
//UINavigationController - 画面推移
//UIPageControl - ページコントロール
//UIPickerView - 文字列や数値等の選択（ピッカー）
//UIProgressView - プログレスバー
//UIScrollView - スクロール
//UISegmentedControl - 複数の選択肢から一つを選択
//UISlider - スライダー
//UISwitch - ON/OFFを切り替えるスイッチ
//UITabBarController - タブバーによる画面の切り替え
//UITableViewController - テーブル
//UITextField - テキストの入力
//UITextView - 長いテキストの表示と編集
//UIWebView - Webページの表示