//
//  ViewController.m
//  代理传值
//
//  Created by 耿恩博 on 16/4/22.
//  Copyright © 2016年 耿恩博. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()<SecondViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一页";
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(clickNextPage) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
}

-(void)clickNextPage
{
    SecondViewController *sec = [[SecondViewController alloc] init];
    sec.daili = self;
    [self presentViewController:sec animated:YES completion:^{
        
    }];
}

- (void)bianyanse:(UIColor *)color
{
    self.view.backgroundColor = color;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
