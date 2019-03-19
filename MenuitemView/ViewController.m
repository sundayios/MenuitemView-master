//
//  ViewController.m
//  MenuitemView
//
//  Created by topwellsoft on 2019/1/7.
//  Copyright © 2019年 ssq. All rights reserved.
//

#import "ViewController.h"
#import "MenuItemView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    MenuItemView *leftItemView = [[MenuItemView alloc] initWithFrame:CGRectMake(100, 100, 120, 35)];
    leftItemView.itemText = @"活动名称";
    leftItemView.items = @[@"活动名称5",@"活动名称4",@"活动名称3",@"活动名称2",@"活动名称1",@"活动名称0"];
    leftItemView.layer.borderWidth = 1.;
    leftItemView.layer.borderColor = [UIColor whiteColor].CGColor;
    leftItemView.layer.masksToBounds = YES;
    leftItemView.backgroundColor = [UIColor orangeColor];
    
    __weak typeof (self) weakSelf = self;
    [leftItemView setSelectedItemBlock:^(NSInteger index, NSString *item) {
        NSLog(@"----%ld----%@",(long)index,item);
        
    }];
    leftItemView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:leftItemView];
}


@end
