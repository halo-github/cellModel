//
//  ViewFactory.m
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "ViewFactory.h"

@implementation ViewFactory
+ (id<ViewProtocol>)initWithType:(NSString*)type {
    Class class = NSClassFromString(type);
    id<ViewProtocol>   view = [class new];
    return view;
}
@end
