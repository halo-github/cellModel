//
//  View1.h
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewProtocol.h"
@interface View1 : UIView <ViewProtocol>
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* age;
@end
