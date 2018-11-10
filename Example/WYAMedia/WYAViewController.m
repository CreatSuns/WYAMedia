//
//  WYAViewController.m
//  WYAMedia
//
//  Created by 1228506851@qq.com on 11/09/2018.
//  Copyright (c) 2018 1228506851@qq.com. All rights reserved.
//

#import "WYAViewController.h"
#import <WYAMedia/WYACameraViewController.h>
@interface WYAViewController ()

@end

@implementation WYAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setTitle:@"照片" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor redColor]];
    [button addTarget:self action:@selector(aaa) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 50, 50);
}

-(void)aaa{
    WYACameraViewController * vc = [[WYACameraViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];
    vc.TakePhoto = ^(UIImage *photo) {
        NSLog(@"photo==%@",photo);
    };
    vc.TakeVideo = ^(NSString *videoPath) {
        NSLog(@"videoPath==%@",videoPath);
    };
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
