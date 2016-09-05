//
//  ZKDownloadView.h
//  ZKDownloadView
//
//  Created by ZK on 16/9/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import <UIKit/UIKit.h>

#define ZKColor(r,g,b,a)        [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:a]

@interface ZKDownloadView : UIControl

@property (nonatomic, assign) CGFloat progress;      //!< 进度:0~1
@property (nonatomic, assign) CGFloat progressWidth; //!< 进度宽

- (void)stopAllAnimations; //!< 停止动画

@end
