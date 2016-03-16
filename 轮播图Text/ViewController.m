//
//  ViewController.m
//  轮播图Text
//
//  Created by qiu on 16/3/16.
//  Copyright © 2016年 QiuFairy. All rights reserved.
//

#import "ViewController.h"
#import "XTLoopScrollView.h"

@interface ViewController ()<XTLoopScrollViewDelegate>

@end

@implementation ViewController

- (void)tapingCurrentIndex:(NSInteger)currentIndex
{
    NSLog(@"currently tapped picture's index is '%ld' ",(long)currentIndex) ;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor] ;
    
    CGRect rect = CGRectMake(0, 100, APPFRAME.size.width, 200) ;
    XTLoopScrollView *loopScroll = [[XTLoopScrollView alloc] initWithFrame:rect andImageList:@[@"1"] canLoop:YES duration:2.0] ;
//    XTLoopScrollView *loopScroll = [[XTLoopScrollView alloc] initWithFrame:rect andImageList:@[@"1",@"2",@"3",@"4"] canLoop:YES duration:5.0] ;
    loopScroll.delegate = self ;
    loopScroll.color_pageControl = [UIColor colorWithRed:250.0/255.0 green:219/255.0 blue:249/255.0 alpha:1] ;
    loopScroll.color_currentPageControl = [UIColor redColor] ;
    
    [self.view addSubview:loopScroll] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
