//
//  View2.m
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "View2.h"

@implementation View2

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void)print:(NSString *)name {
    NSLog(@"我和View1不一样");
}

-(id)initWithname:(NSString *)name {
    if (self = [super init]) {
        self.name = name;
    }
    return self;
}
@end
