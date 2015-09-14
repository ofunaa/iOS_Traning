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
    [self challengeUIApplication];
    
}


- (void)challengeUIApplication {
    
    
    UIApplication *application = [UIApplication sharedApplication];
    application.applicationIconBadgeNumber = 10;
    sleep(1);
    return;
    
    
    // インジケーターの表示/非表示
    // UIApplication *application = [UIApplication sharedApplication];
    // application.networkActivityIndicatorVisible = YES;
    
    
    // ブラウザを開く
    // NSString *urlString = @"http://www.google.co.jp";
    // NSURL *url = [NSURL URLWithString:urlString];
    // [[UIApplication sharedApplication] openURL:url];

}

@end



//UIApplication - アプリケーション
//UIDevice - 端末（デバイス）情報
//UIActionSheet - アクションシート
//UIActivityIndicatorView - アクティビティインジケータ
//UIAlertView - アラートビュー
//UIButton - ボタン
//UIDatePicker - 日付・時刻の選択
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