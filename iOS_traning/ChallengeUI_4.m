//
//  ChallengeUI_4.m
//  iOS_traning
//
//  Created by takuji funao on 2015/09/18.
//  Copyright (c) 2015年 takuji funao. All rights reserved.
//

#import "ChallengeUI_4.h"

@interface ChallengeUI_4 ()<UITableViewDelegate, UITableViewDataSource>


@property (strong, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) NSArray *dataSourceiPhone;
@property (nonatomic, strong) NSArray *dataSourceAndroid;

@end

@implementation ChallengeUI_4

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    
    self.dataSourceiPhone = @[@"iPhone 4", @"iPhone 4S", @"iPhone 5", @"iPhone 5c", @"iPhone 5s"];
    
    self.dataSourceAndroid = @[@"Nexus", @"Galaxy", @"Xperia"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    NSLog(@"きてます２");
    
    return 2;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    NSLog(@"きてます１");
    
    NSInteger dataCount;
    
    switch (section) {
        case 0:
            dataCount = self.dataSourceiPhone.count;
            break;
        case 1:
            dataCount = self.dataSourceAndroid.count;
            break;
        default:
            break;
    }
    return dataCount;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSLog(@"きてます３");
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:CellIdentifier];
    }
    
    switch (indexPath.section) {
        case 0:
            cell.textLabel.text = self.dataSourceiPhone[indexPath.row];
            break;
        case 1:
            cell.textLabel.text = self.dataSourceAndroid[indexPath.row];
            break;
        default:
            break;
    }
    
    return cell;
}

@end
