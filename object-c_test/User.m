//
//  User.m
//  object-c_test
//
//  Created by gp on 2017/9/30.
//  Copyright © 2017年 gp. All rights reserved.
//

#import "User.h"

@implementation User


//实现一个动态方法
-(void)setName:(NSString *)name{
    _name=name;
}

-(NSString*)getName{
    return _name;
}

//实现一个静态方法
+(void)showMessage:(NSString *)info{
    NSLog(@"%@",info);
}

//实现age的setter、getter方法
-(int)age{
    return _age;
}
-(void)setAge:(int)age{
    _age=age;
}




@end
