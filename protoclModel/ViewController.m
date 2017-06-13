//
//  ViewController.m
//  protoclModel
//
//  Created by lf on 17/6/8.
//  Copyright © 2017年 lf. All rights reserved.
//

#import "ViewController.h"
#import "View1.h"
#import "View2.h"
#import "ViewFactory.h"
@interface ViewController ()
@property (nonatomic, strong) id <ViewProtocol> viewModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[ViewFactory initWithType:@"View2"] print:@"sdff"];
    id<ViewProtocol> idd = [[ViewFactory initWithType:@"View1"] initWithname:@"dfffff"];
    NSLog(@"%@",idd.name);
    View1 *view1 = (View1*)idd;
    view1.age = @"11";
    NSLog(@"%@---%@",view1.name,view1.age);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
