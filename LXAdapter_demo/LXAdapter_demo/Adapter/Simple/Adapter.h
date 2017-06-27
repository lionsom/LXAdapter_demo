//
//  Adapter.h
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Adaptee.h"
#import "Target.h"

//类适配器
/*
    类适配器
        特点：1.Adapter需要继承Adaptee （被适配的对象）
             2.实现目标接口
 */
@interface Adapter : Adaptee <Target>


@end
