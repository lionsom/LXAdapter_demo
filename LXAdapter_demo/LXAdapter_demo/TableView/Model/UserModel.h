//
//  UserModel.h
//  LXAdapter_demo
//
//  Created by linxiang on 2017/6/22.
//  Copyright © 2017年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserModel : NSObject

@property (nonatomic, strong) NSString * title;
@property (nonatomic, strong) NSString * name;

-(instancetype)initWithTitle:(NSString *)title :(NSString *)name;

@end
