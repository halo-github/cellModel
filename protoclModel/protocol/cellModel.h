//
//  cellModel.h
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//
typedef void (^selectedCallback)();
#import <Foundation/Foundation.h>


@protocol cellModel <NSObject>
@property (nonatomic, strong) NSString* name;
@required
/*
 根据传入的obj的数据类型，在相应的类中实现selectedCallback:
 使得调用这个类的对象只需要关心他本身的行为，不用再在VC里写一串的if。。else
 */
- (void)selectedCallbackWithObject:(id)obj;
@optional

/*
 同上，获取自身的高度
 */
- (float)cellModelHeight;
@end
