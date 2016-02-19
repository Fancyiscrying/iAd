//
//  ViewController.m
//  iAd
//
//  Created by Fancy on 16/2/19.
//  Copyright © 2016年 Fancy. All rights reserved.
//

#import "ViewController.h"
#import <iAd/iAd.h>

@interface ViewController () <ADBannerViewDelegate>


@property (strong, nonatomic) ADBannerView *bannerView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bannerView = [[ADBannerView alloc] initWithAdType:ADAdTypeBanner];
    self.bannerView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    self.bannerView.delegate  = self;
    [self.view addSubview: self.bannerView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma ADBaner的代理方法


- (void) bannerViewDidLoadAd:(ADBannerView *)banner
{


    NSLog(@"广告加载成功");



}

- ( void)  bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{

    NSLog(@"广告加载失败");

}


- (void)bannerViewActionDidFinish:(ADBannerView *)banner

{
    NSLog(@"广告关闭");

}

@end
