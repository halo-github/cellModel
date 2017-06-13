//
//  Tools.m
//  protoclModel
//
//  Created by lf on 17/6/10.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "Tools.h"

@implementation Tools
+ (UIViewController*)currentUiViewController {
    UIViewController* rootVC = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    while (rootVC) {
        if ([rootVC isKindOfClass:[UITabBarController class]]) {
            rootVC = [(UITabBarController*)rootVC selectedViewController];
        }
        else if ([rootVC isKindOfClass:[UINavigationController class]]) {
            rootVC = [(UINavigationController*)rootVC visibleViewController];
        }
        else
            break;
    }
    return rootVC;
}

@end
