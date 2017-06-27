//
//  ObjectAdapter.h
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Adaptee.h"

//对象适配器
/*
    对象适配器特点
        1.Adapter需要实现目标接口
        2.Adapter需要持有被适配对象的引用
 */
@interface ObjectAdapter : NSObject

-(instancetype)initWithAdaptee:(Adaptee *)adaptee;

-(float)getCNY;

@end
