//
//  DerekCameraViewController.h
//  DIYCamera_demo
//
//  Created by Derek on 18/01/18.
//  Copyright © 2018年 Derek. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DerekCameraDelegate <NSObject>

- (void)ay_getImage:(UIImage*)image;

@end

@interface DerekCameraViewController : UIViewController

@property (nonatomic , weak)id<DerekCameraDelegate> delegate;

@end
