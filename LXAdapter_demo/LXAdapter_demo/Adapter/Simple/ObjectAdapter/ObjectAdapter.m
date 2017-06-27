//
//  ObjectAdapter.m
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "ObjectAdapter.h"


@interface ObjectAdapter()

@property (nonatomic) Adaptee * adaptee;

@end


@implementation ObjectAdapter

-(instancetype)initWithAdaptee:(Adaptee *)adaptee {
    self = [super init];
    if (self) {
        _adaptee = adaptee;
    }
    return self;
}


-(float)getCNY {
    return [_adaptee getUSD] * 6.88f;
}



@end
