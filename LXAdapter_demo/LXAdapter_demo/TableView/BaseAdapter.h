//
//  BaseAdapter.h
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseAdapter : NSObject <UITableViewDelegate, UITableViewDataSource>

//数据集合
@property (nonatomic, strong) NSMutableArray * dataArray;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
