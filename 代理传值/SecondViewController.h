//
//  SecondViewController.h
//  代理传值
//
//  Created by 耿恩博 on 16/4/22.
//  Copyright © 2016年 耿恩博. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol SecondViewControllerDelegate <NSObject>
-(void)bianyanse:(UIColor *)color;

@end
@interface SecondViewController : UIViewController

@property(nonatomic, assign) id<SecondViewControllerDelegate>daili;

@end
