//
//  CellFactory.m
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "CellFactory.h"
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@interface CellFactory()
@property (nonatomic, strong) id<cellModel> model;

@end

@implementation CellFactory


+ (id<cellModel>)cellWithReuseIdentifier:(NSString*)ident {
    return [NSClassFromString(ident) new];
}

+ (float)cellHeightWithReuseIdentifier:(NSString*)ident {
    return [[self cellWithReuseIdentifier:ident] cellModelHeight];
}


+ (void)commitCellCallbackWithReuseIdentifier:(NSString*)ident Object:(id)obj {
    id<cellModel> cell = [self cellWithReuseIdentifier:ident];
    SEL sel = NSSelectorFromString(@"selectedCallback:");
    [cell performSelector:sel withObject:obj];
}

@end
