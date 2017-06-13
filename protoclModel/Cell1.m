//
//  Cell1.m
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "Cell1.h"
#import "Tools.h"
@interface Cell1()
@property (nonatomic, assign) CGFloat cellHeight;
@property (nonatomic, strong) UILabel* lab;

@end

@implementation Cell1



- (void)awakeFromNib {
    [super awakeFromNib];
//    _cellHeight = self.bounds.size.height;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (float)cellModelHeight {
    UIView* view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil][0];
    return view.bounds.size.height;
}

- (void)selectedCallbackWithObject:(id)obj {
//    if ([obj isKindOfClass:[UIViewController class]]) {
//        [[Tools currentUiViewController] presentViewController:(UIViewController*)obj animated:YES completion:^{}];
//    }
    NSLog(@"%@",obj);
}


@end
