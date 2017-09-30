//
//  User.h
//  object-c_test
//
//  Created by gp on 2017/9/30.
//  Copyright © 2017年 gp. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject{
    
    /*成员变量必须包含在大括号中
     *注意成员变量不声明任何关键字的话是默认可访问性@Protected
     *注意在ObjC中不管是自定义的类还是系统类对象都必须是一个指针，例如下面的_name
     */
    @private
        NSString *_name;//在ObjC中推荐成员变量名以_开头
        int _age;
    @protected
        NSString *_nation;
    @public
        float height;
 
    }

    //声明一个动态方法，没有返回值
    -(void)setName:(NSString *)name;
    -(NSString*)getName;
    //声明一个静态方法，没有返回值
    +(void)showMessage:(NSString *)info;


    //声明age的setter、getter方法
    -(int)age;
    -(void)setAge:(int)age;


@end
