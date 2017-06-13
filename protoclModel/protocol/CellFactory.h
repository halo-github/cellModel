//
//  CellFactory.h
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cellModel.h"
@interface CellFactory : NSObject
+ (id<cellModel>)cellWithReuseIdentifier:(NSString*)ident ;
+ (float)cellHeightWithReuseIdentifier:(NSString*)ident;
+ (void)commitCellCallbackWithReuseIdentifier:(NSString*)ident Object:(id)obj;
@end
