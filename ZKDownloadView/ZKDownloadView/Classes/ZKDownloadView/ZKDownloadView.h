//
//  ZKDownloadView.h
//  ZKDownloadView
//
//  Created by ZK on 16/9/5.
//  Copyright © 2016年 ZK. All rights reserved.
//

#import <UIKit/UIKit.h>

#define XNColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

@interface ZKDownloadView : UIControl

/**
 *  进度:0~1
 */
@property (nonatomic, assign) CGFloat progress;
/**
 *  进度宽
 */
@property (nonatomic, assign) CGFloat progressWidth;
/**
 *  停止动画
 */
- (void)stopAllAnimations;

@end
