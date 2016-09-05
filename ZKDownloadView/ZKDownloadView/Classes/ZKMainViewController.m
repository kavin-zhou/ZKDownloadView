//
//  ZKMainViewController.m
//  ZKDownloadView
//
//  Created by ZK on 16/9/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import "ZKMainViewController.h"
#import "ZKDownloadView.h"

@interface ZKMainViewController()
{
    NSTimer *_timer;
    double _timeCount;
    CGFloat _progress;
}
@property (nonatomic, strong) ZKDownloadView *downloadView;

@end

@interface ZKMainViewController ()

@end

@implementation ZKMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title  = @"JSDownloadAnimation";
    self.view.backgroundColor = XNColor(41, 158, 239, 1);
    
    [self initData];
    
    [self.view addSubview:({
        ZKDownloadView *downloadView = [[ZKDownloadView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.frame)/2-50, CGRectGetHeight(self.view.frame)/2-50, 100, 100)];
        [downloadView addTarget:self action:@selector(updateProgress) forControlEvents:UIControlEventTouchUpInside];
        downloadView.progressWidth = 4;
        self.downloadView = downloadView;
        self.downloadView;
    })];
    
}

- (void)initData{
    _timeCount = 200.0;
    _progress = 0.0;
}

// 模拟网络请求数据进度
- (void)timeDown{
    _timeCount -= 1;
    _progress += 0.005;
    self.downloadView.progress  = _progress;
    
    if (_timeCount <= 0) {
        
        [self initData];
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)updateProgress{
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(timeDown) userInfo:nil repeats:YES];
}

@end
