//
//  UserModel.m
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import "UserModel.h"

@implementation UserModel

-(instancetype)initWithTitle:(NSString *)title :(NSString *)name {
    
    self= [super init];
    if (self) {
        _title = title;
        _name = name;
    }
    
    return self;
}



@end
