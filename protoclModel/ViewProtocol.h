//
//  ViewProtocol.h
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ViewProtocol <NSObject>
@optional
- (void)print:(NSString*)name;
- (NSString*)name;
- (id)initWithname:(NSString*)name;
@end
