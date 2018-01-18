//
//  ViewController.m
//  DIYCamera_demo
//
//  Created by Derek on 18/01/18.
//  Copyright © 2018年 Derek. All rights reserved.
//

#import "ViewController.h"
#import "DerekCameraViewController.h"
@interface ViewController ()<DerekCameraDelegate>
@property (nonatomic,strong) UIImageView *bgImgView;
@property (nonatomic,strong) UIButton *takepic;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.bgImgView=[[UIImageView alloc]initWithFrame:CGRectMake(0, 20, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-22-49)];
    self.bgImgView.backgroundColor=[UIColor redColor];
    
    self.takepic=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 80, 49)];
    [self.takepic setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.takepic setTitle:@"拍照" forState:UIControlStateNormal];
    self.takepic.center=CGPointMake([UIScreen mainScreen].bounds.size.width/2,self.bgImgView.frame.size.height+20+49/2);
    [self.takepic addTarget:self action:@selector(takeMyPic) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.bgImgView];
    [self.view addSubview:self.takepic];
}
-(void)takeMyPic{
    
    DerekCameraViewController *vc = [[DerekCameraViewController alloc] init];
    vc.delegate = self;
    
    [self presentViewController:vc animated:YES completion:nil];
}
- (void)ay_getImage:(UIImage *)image{
    
    self.bgImgView.image = image;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
