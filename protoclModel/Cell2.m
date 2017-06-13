//
//  Cell2.m
//  protoclModel
//
//  Created by lf on 17/6/9.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "Cell2.h"
#import "Tools.h"
#import <objc/runtime.h>
@interface Cell2()
@property (nonatomic, assign) CGFloat cellHeight;
@property (nonatomic, strong) UILabel* lab;
@property (nonatomic, strong) UIButton* btn;

@end
@implementation Cell2

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setSelectedHandler:(selectedCallback)selectedHandler {
    
}

- (float)cellModelHeight {
    UIView* view = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:self options:nil][0];
    return view.bounds.size.height;
}

- (void)selectedCallbackWithObject:(id)obj {
//    if ([obj isKindOfClass:[UIViewController class]]) {
//        [[Tools currentUiViewController] presentViewController:(UIViewController*)obj animated:YES completion:^{}];
//    }
    NSLog(@"%@----%@",NSStringFromClass(self.class),obj);
}


@end
