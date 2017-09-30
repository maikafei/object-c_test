//
//  main.m
//  object-c_test
//
//  Created by gp on 2017/9/29.
//  Copyright © 2017年 gp. All rights reserved.
//  hello world 测试程序
//  类文件主要的格式，相当于.java、.c或.cpp
//

#import <Foundation/Foundation.h>
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //类调用
        User *p=[User alloc];
        p=[p init];
        //上面两句代码可以直接写成：Person *p=[[Person alloc] init];
        //还可以写成：Person *p=[Person new];
        
        //成员变量调用
        p->height=1.72;
        NSLog(@"height=%.2f",p->height);//结果：height=1.72
        
        //方法调用
        [p setName:@"汤姆"];
        
        //属性调用
        p.age=28; //等价于：[p setAge:28];
        int age=p.age;//等价于：age=[p age];
        NSString *name =p.getName ;
       
        NSLog(@"age=%i",age); //结果：age=28
        NSLog(@"name=%@",name);
        
        
        
        
        //变量
        char g='a';
        int a1=1, b1=2;
        float f=0.1;
        double pp=0.12;
        
        
        //打印输出
//        NSLog(@"!中国 ");        //打印字符串
//
//        int i = 123;
//        NSLog(@"%d",i);         //打印数值
//        NSLog(@"a=%d,y=%d",10,20);
        
        //循环
//        int a;
//        for( a = 10; a < 20; a = a + 1 ){
//            NSLog(@"a的值是: %d", a);
//        }
        
        //判断
//        if(a1< 20){
//            NSLog(@"a小于20");
//        }
        
        //数组=============================================================
        //固定长度数组-------------------
        //NSArray *array = [NSArray arrayWithObjects:@"中",@"国",@"人",nil];
        //int count = array.count;
        //遍历1
//        for(int i=0; i<count; i++){
//            id obj = [array objectAtIndex:i];
//            NSLog(@"%i-%@",i, obj);
//        }
        //遍历2
//        int i=0;
//        for(id obj in array){
//            NSLog(@"%i-%@",i, obj);
//            i++;
//        }
        
        //动态数组-----------------------
//        NSMutableArray *mArray1 = [NSMutableArray arrayWithCapacity:5];
//
//        //向数组中添加元素
//        [mArray1 addObject:@"aaaa"];
//        [mArray1 addObject:@"cccc"];
//        NSLog(@"mArray1 = %@",mArray1);
//
//        //向指定位置插入元素
//        [mArray1 insertObject:@"bbbb" atIndex:1];
//        [mArray1 insertObject:@"dddd" atIndex:[mArray1 count]];
//        [mArray1 insertObject:@"eeee" atIndex:[mArray1 count]];
//        NSLog(@"mArray1 = %@",mArray1);
//
//        //移除元素
//        [mArray1 removeObject:@"eeee"];
//        NSLog(@"mArray1 = %@",mArray1);
//        [mArray1 removeObjectAtIndex:[mArray1 count]-1];
//        NSLog(@"mArray1 = %@",mArray1);
//        NSArray *array5 = [NSArray arrayWithObjects:@"bbbb",@"cccc", nil];
//        [mArray1 removeObjectsInArray:array5];
//        NSLog(@"mArray1 = %@",mArray1);
//
//        //向数组内插入数组
//        NSMutableArray *mArray2 = [NSMutableArray arrayWithObjects:@"aaaa",@"aaaa", nil];
//        [mArray2 addObject:@"bbbb"];
//        NSLog(@"mArray2 = %@",mArray2);
//        [mArray2 addObjectsFromArray:mArray2];
//        NSLog(@"mArray2 = %@",mArray2);
//
//        //替换元素
//        [mArray2 replaceObjectAtIndex:[mArray2 count]-1 withObject:@"5"];
//        NSLog(@"mArray2 = %@",mArray2);
        
        //遍历数组  常规方法:性能较低
//        NSArray *array6 = [NSArray arrayWithObjects:@"a",@"b",@"c",@"d",@"e", nil];
//        int len = [array6 count];
//        for (int i=0; i<len; i++) {
//            NSString *value = [array6 objectAtIndex:i];
//            NSLog(@"array6 %d content is %@",i,value);
//        }
        
        //枚举遍历  相当于java中的增强for循环
//        for (NSString *string in array6) {
//            NSLog(@"array6 content is %@",string);
//        }
//
//        NSLog(@"-----------------------");
//
//        //当不确定数组元素类型时
//        for(id string in array6){
//            NSLog(@"array6 content is %@",string);
//        }
        
        
        //字符串相关操作===========================================================
//        NSString *str1 = @"BeiJing";
//        NSString *str2 = @"beijing";
        
//        //全部转为大写
//        NSLog(@"%@",[str1 uppercaseString]);
//        //全部转为小写
//        NSLog(@"%@",[str1 lowercaseString]);
//        //首字母大写
//        NSLog(@"%@",[str1 capitalizedString]);
//        //比较两个字符串内容是否相同
//        BOOL b =[str1 isEqualToString:str2];
//        NSLog(@"%d", b);//0 false 1 true
        
        //两个字符串内容比较
        //NSOrderedAscending    右边 > 左边
        //NSOrderedSame         内容相同
        //NSOrderedDescending   左边 > 右边
//        NSComparisonResult result = [str1 compare:str2];
//        if (result == NSOrderedAscending) {
//            NSLog(@"右边 > 左边");
//        }else if(result == NSOrderedSame){
//            NSLog(@"内容相同");
//        }else if (result == NSOrderedDescending){
//            NSLog(@"左边 > 右边");
//        }
        
        //忽略大小写进行比较，返回值与compare一样
//        result = [str1 caseInsensitiveCompare:str2];
//        if (result == NSOrderedAscending) {
//            NSLog(@"右边 > 左边");
//        }else if(result == NSOrderedSame){
//            NSLog(@"内容相同");
//        }else if (result == NSOrderedDescending){
//            NSLog(@"左边 > 右边");
//        }
        
        
//        //判断字符串是否以指定字符串开头
//        NSLog(@"%d", [str1 hasPrefix:@"Bei"]);//0 false 1 true;
//        //判断字符串是否以指定字符串结尾
//        NSLog(@"%d", [str1 hasSuffix:@"aaa"]);//0 false 1 true;
//
//
//        //判断字符串是否包含指定字符串，返回位置和长度
//        NSRange range = [@"123456" rangeOfString:@"456"];
//        NSLog(@"%@", NSStringFromRange(range));
//
//        //反向搜索
//        range = [@"123456456qweasasd456" rangeOfString:@"456" options:NSBackwardsSearch];
//        NSLog(@"%@",NSStringFromRange(range));
//
//
//        //指定范围进行搜索
//        range = NSMakeRange(0, 9);
//        range = [@"123456456qweasasd456" rangeOfString:@"456" options:NSBackwardsSearch range:range];
//        NSLog(@"%@",NSStringFromRange(range));
        
        
        //----------------NSString-----------------------------
//        NSString *str1 = @"这是一个字符串常量";
//        NSLog(@"str1 = %@",str1);
//        //创建一个空字符串
//        NSString *str2 = [[NSString alloc]init];
//        NSString *str3 = [NSString string];
//        NSLog(@"str2 = %@",str2);
//        NSLog(@"str3 = %@",str3);
//        //快速创建一个字符串
//        NSString *str4 = [[NSString alloc]initWithString:str1];
//        NSString *str5 = [NSString stringWithString:str1];
//        NSLog(@"str4 = %@",str4);
//        NSLog(@"str5 = %@",str5);
//        //创建一个格式化字符串
//        NSString *str6 = [[NSString alloc]initWithFormat:@"%d",10];
//        NSString *str7 = [NSString stringWithFormat:@"%.2f",10.8099887];
//        NSLog(@"str6 = %@",str6);
//        NSLog(@"str7 = %@",str7);
//
//
//        //比较两个字符串内容是否相等
//        if ([str6 isEqualToString:str7]) {
//            NSLog(@"str6 is EqualToString str7");
//        }else{
//            NSLog(@"str6 is not EqualToString str7");
//        }
        
        //转换为基本数据类型
//        NSString *str8 = @"3";
//        float f1 = [str8 floatValue];
//        NSLog(@"str8 = %.2f",f1);
        
        
//        //字符串拆分为数组
//        NSString *str9 = @"命 运 就 算 颠 沛 流 离";
//        NSArray *array = [str9 componentsSeparatedByString:@" "];
//        NSLog(@"array = %@",array);
//        NSLog(@"array[0] = %@",array[0]);
//
//        //截取字符串(截子串)
//        NSString *str10 = @"123456789";
//        NSString *subStr1 = [str10 substringToIndex:4];
//        NSString *subStr2 = [str10 substringFromIndex:6];
//        NSLog(@"subStr1 = %@",subStr1);
//        NSLog(@"subStr2 = %@",subStr2);
//
//        NSRange range = {4,2};
//        NSString *subStr3 = [str10 substringWithRange:range];
//        NSLog(@"subStr3 = %@",subStr3);
//
//        //拼接字符串
//        NSString *str11 = @"123";
//        NSString *str12 = @"456";
//        NSString *appStr1 = [[NSString alloc]initWithFormat:@"%@%@",str11,str12];
//        NSString *appStr2 = [str11 stringByAppendingFormat:@"%@",str12];
//        NSString *appStr3 = [str11 stringByAppendingString:str12];
//        NSLog(@"appStr1 = %@",appStr1);
//        NSLog(@"appStr2 = %@",appStr2);
//        NSLog(@"appStr3 = %@",appStr3);
        
        
        
//        //查找字符串
//        NSString *str13 = @"qweradsfzxcvqazxsw";
//        NSRange range1 = [str13 rangeOfString:@"dsfzx"];
//        NSLog(@"%@",NSStringFromRange(range1));
//        NSLog(@"%d",range1.location);
//        if (range1.location != NSNotFound) {
//            NSLog(@"str found");
//        }else{
//            NSLog(@"str not found");
//        }
        
        
        /*------------NSMutableString 可变字符串-----------------*/
//        //插入
//        NSMutableString *mStr1 = [[NSMutableString alloc] initWithFormat:@"abcd"];
//        [mStr1 insertString:@"defg" atIndex:4];    //注意：此处为在源字符串上修改，并未生成新的字符串
//        NSLog(@"mStr1 = %@",mStr1);
//
//        //替换
//        [mStr1 replaceCharactersInRange:NSMakeRange(4, 4) withString:@"1234"];
//        NSLog(@"%@",mStr1);
//
//        //删除
//        [mStr1 deleteCharactersInRange:NSMakeRange(4, 4)];
//        NSLog(@"%@",mStr1);
//
        
        
        
        //键值(类似Map)===============================================
        //固定长度-------------------
//        NSDictionary *dict1=@{@"k1":@"v1", @"k2":@"v2", @"k3":@"v3"};
//        //通过key查找value
//        NSString* obj=[dict1 objectForKey:@"k3"];
//        NSLog(@"value:%@", obj);
//        //获取所有的key
//        NSArray *keys=[dict1 allKeys];
//        NSLog(@"所有的键:%@", keys);
//        //获取所有的值
//        NSArray *values=[dict1 allValues];
//        NSLog(@"所有的值:%@", values);
        //快速枚举法遍历  **枚举的是key**
//        for(id obj in dict1)
//        {
//            NSLog(@"key:%@", obj); //键
//            NSLog(@"value:%@", [dict1 objectForKey:obj]); //值
//        }
//        //枚举器法  objectEnumerator 枚举的是值
//        NSEnumerator *enumerator=[dict1 objectEnumerator];
//        id obj;
//        while(obj=[enumerator nextObject])
//        {
//            NSLog(@"枚举器法obj:%@",obj);
//        }
//        //枚举器法 枚举键
//        NSEnumerator *kenumerator=[dict1 keyEnumerator];
//        id key;
//        while(key=[kenumerator nextObject])
//        {
//            NSLog(@"键枚举器法key:%@",key);
//        }
        
        //字典的长度
//        NSUInteger count=dict1.count;
//        NSLog(@"字典一共有%lu个键值对",count);
        
        
        //可变长度-----------------------------
        //NSMutableDictionary* mdict7=@{@"k1":@"v1", @"k2":@"v2", @"k3":@"v3"}; //错误写法 - 不能按定长写法
        
        //向字典中添加一组数据
//        NSMutableDictionary* mdict1=[[NSMutableDictionary alloc]init];
//        [mdict1 setObject:@"value1" forKey:@"key1"];//插入数据
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
        
        //将一个字典中的所有元素添加到另一个字典
//        [mdict1 addEntriesFromDictionary:@{@"k1":@"v1", @"k2":@"v2"}];
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
        
        //删除NSMutableDictionary中的键值对
//        NSMutableDictionary *mdict1=[[NSMutableDictionary alloc]initWithObjectsAndKeys:@"v1",@"k1",@"v2",@"k2",@"v3",@"k3", nil];
        
//        //通过key 删除字典中对应的键值对
//        [mdict1 removeObjectForKey:@"k1"];
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
//        //通过多个key 删除字典中对应的多个键值对
//        [mdict1 removeObjectsForKeys:@[@"k2",@"k3"]];
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
//        //重置字典
//        [mdict1 setDictionary:@{@"1":@"one", @"2":@"two"}];
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
//        //删除所有键值对
//        [mdict1 removeAllObjects];
//        NSLog(@"可变字典mdict1[键值对数量:%lu],%@" ,[mdict1 count], mdict1);
        
        
        
      
    }
    return 0;
}
