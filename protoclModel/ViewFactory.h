//
//  ViewFactory.h
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewProtocol.h"
@interface ViewFactory : NSObject
+ (id<ViewProtocol>)initWithType:(NSString*)type;
@end
