//
//  ViewController.m
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ViewController.h"

#import "Adapter.h"

#import "ObjectAdapter.h"

#import "UserAdapter.h"

@interface ViewController () // <UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic, strong) UserAdapter * userAdapter;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //类适配器测试
    Adapter * adp = [[Adapter alloc]init];
    float cny = [adp getCNY];
    NSLog(@"CNY = %f",cny);
    
    //对象适配器
    ObjectAdapter * obj = [[ObjectAdapter alloc]initWithAdaptee:adp];
    float cny_1 = [obj getCNY];
    NSLog(@"CNY = %f",cny_1);
    
    [self initAdapter];
}


//*****************实战 TableView********************
/*
 类比：
 Target目标接口：UITableViewDelegate,UITableViewDataSource
 适配器：ViewController
 被适配：数据
 */


-(void)initAdapter {
    _userAdapter = [[UserAdapter alloc]init];
    self.tableView.delegate = _userAdapter;
    self.tableView.dataSource = _userAdapter;
}


//-(void)initTableView {
//    self.tableView.delegate = self;
//    self.tableView.dataSource = self;
//}


////实现代理方法
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return 3;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    
//    static NSString * cellidentify = @"cellidentify";
//    
//    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellidentify];
//    
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellidentify];
//    }
//    
//    cell.textLabel.text = @"姓名";
//    cell.detailTextLabel.text = @"AAAAAAAA";
//    
//    return cell;
//}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
