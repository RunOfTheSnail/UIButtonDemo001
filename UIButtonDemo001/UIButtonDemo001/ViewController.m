//
//  ViewController.m
//  UIButtonDemo001
//
//  Created by zhangyan on 16/12/12.
//  Copyright © 2016年 zhangyan. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomBtn.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self createUI];
    
}

- (void)createUI
{
    UIButton *tempBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    tempBtn.frame = CGRectMake(100, 50, 200, 80);
    [tempBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    tempBtn.selected = YES;
    // 设置按钮在 Normal 下的状态属性
    [tempBtn setTitle:@"Normal" forState:UIControlStateNormal];
    [tempBtn setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [tempBtn setBackgroundImage:[UIImage imageNamed:@"normalBack"] forState:UIControlStateNormal];
    
    // 设置按钮在 Selected 下的状态属性
    [tempBtn setTitle:@"Selected" forState:UIControlStateSelected];
    [tempBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
    // 设置按钮在 Highlighted 下的状态属性
    [tempBtn setBackgroundImage:[UIImage imageNamed:@"btnBackGround"] forState:UIControlStateHighlighted];
    
    [self.view addSubview:tempBtn];
    
    
    
    
    
    UIButton *tempBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    tempBtn1.frame = CGRectMake(100, 200, 200, 80);
    [tempBtn1 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    tempBtn1.selected = YES;
    
    // 设置按钮在 Normal 下的状态属性
    [tempBtn1 setTitle:@"Normal" forState:UIControlStateNormal];
    [tempBtn1 setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [tempBtn1 setBackgroundImage:[UIImage imageNamed:@"normalBack"] forState:UIControlStateNormal];
    
    // 设置按钮在 Selected 下的状态属性
    [tempBtn1 setTitle:@"Selected" forState:UIControlStateSelected];
    [tempBtn1 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
    // 设置按钮在 Highlighted 下的状态属性
    [tempBtn1 setBackgroundImage:[UIImage imageNamed:@"btnBackGround"] forState:UIControlStateHighlighted];
    
    
    [self.view addSubview:tempBtn1];
    
    // **********************************自定义的btn***********************************************
    
    MyCustomBtn *customBtn = [MyCustomBtn buttonWithType:UIButtonTypeCustom];
    customBtn.frame = CGRectMake(100, 320, 200, 80);
    [customBtn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    customBtn.selected = YES;
    
    // 设置按钮在 Normal 下的状态属性
    [customBtn setTitle:@"Normal" forState:UIControlStateNormal];
    [customBtn setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [customBtn setBackgroundImage:[UIImage imageNamed:@"normalBack"] forState:UIControlStateNormal];
    
    // 设置按钮在 Selected 下的状态属性
    [customBtn setTitle:@"Selected" forState:UIControlStateSelected];
    [customBtn setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
    // 设置按钮在 Highlighted 下的状态属性
    [customBtn setBackgroundImage:[UIImage imageNamed:@"btnBackGround"] forState:UIControlStateHighlighted];
    
    
    [self.view addSubview:customBtn];
    
    
    
    // **********************************究极解决方案***********************************************
    
    UIButton *tempBtn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    tempBtn2.frame = CGRectMake(100, 420, 200, 80);
    [tempBtn2 addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
//    tempBtn2.selected = YES;
    // 设置按钮在 Normal 下的状态属性
    [tempBtn2 setTitle:@"Normal" forState:UIControlStateNormal];
    [tempBtn2 setTitleColor:[UIColor blueColor] forState:UIControlStateSelected];
    [tempBtn2 setBackgroundImage:[UIImage imageNamed:@"normalBack"] forState:UIControlStateNormal];
    
    // 设置按钮在 Selected 下的状态属性
    [tempBtn2 setTitle:@"Selected" forState:UIControlStateSelected];
    [tempBtn2 setTitleColor:[UIColor redColor] forState:UIControlStateSelected];
    
    // 设置按钮在 Highlighted 下的状态属性
    [tempBtn2 setBackgroundImage:[UIImage imageNamed:@"btnBackGround"] forState:UIControlStateHighlighted];
    
    [tempBtn2 setBackgroundImage:[UIImage imageNamed:@"btnBackGround"] forState:UIControlStateHighlighted | UIControlStateSelected];
    [tempBtn2 setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted | UIControlStateSelected];
    [tempBtn2 setTitle:@"Selected" forState:UIControlStateHighlighted | UIControlStateSelected];
    
    [self.view addSubview:tempBtn2];
    
 

}




- (void)clickBtn:(UIButton *)sender
{
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
