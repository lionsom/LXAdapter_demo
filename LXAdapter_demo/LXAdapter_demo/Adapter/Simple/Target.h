//
//  Target.h
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

//目标接口

/*
 目的：将美元（被适配对象->Adaptee） -----》 人民币（目标接口->Target）
 */


@protocol Target <NSObject>

//得到人民币
-(float)getCNY;

@end
