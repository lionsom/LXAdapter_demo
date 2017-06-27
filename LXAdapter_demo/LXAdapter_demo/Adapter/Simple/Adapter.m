//
//  Adapter.m
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "Adapter.h"

@implementation Adapter

-(float)getCNY {
    return [self getUSD] * 6.88;
}

@end
