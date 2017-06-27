//
//  UserAdapter.m
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "UserAdapter.h"

@implementation UserAdapter


- (instancetype)init {
    
    self = [super init];
    if (self) {
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"姓名" :@"AAA"]];
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"姓名" :@"BBB"]];
        [self.dataArray addObject:[[UserModel alloc] initWithTitle:@"姓名" :@"CCC"]];
    }
    return self;
}


//实现代理方法
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //父类默认cell
    UITableViewCell * cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    
    UserModel * model = [self.dataArray objectAtIndex:indexPath.row];
    
    cell.textLabel.text = model.title;
    cell.detailTextLabel.text = model.name;
    
    return cell;
}


@end
