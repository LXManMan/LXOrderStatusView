//
//  ViewController.m
//  LXOrderStatusView
//
//  Created by zhongzhi on 2017/6/30.
//  Copyright © 2017年 zhongzhi. All rights reserved.
//

#import "ViewController.h"
#import "FTProgressView.h"

#define Device_Height [[UIScreen mainScreen] bounds].size.height
#define Device_Width  [[UIScreen mainScreen] bounds].size.width//获取屏幕宽高
@interface ViewController ()
@property(nonatomic,strong)FTProgressView *progressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.progressView =[[FTProgressView alloc]initWithFrame:CGRectMake(0, 100, Device_Width, 62) titleArray:@[@"已接单",@"已装货",@"运输中",@"已卸货",@"已完成"]];
    self.progressView.backgroundColor =[UIColor whiteColor];
    [self.view addSubview:self.progressView];
    
    self.progressView.index = 2;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    self.progressView.index = arc4random()%5;
    NSLog(@"%ld",self.progressView.index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
