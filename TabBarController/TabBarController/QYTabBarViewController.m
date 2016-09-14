//
//  QYTabBarViewController.m
//  eXiaoTongForParents
//
//  Created by qyhc on 16/7/18.
//  Copyright © 2016年 com.zhangcheng. All rights reserved.
//

#import "QYTabBarViewController.h"

#import "BaseNavigationController.h"

#import "ShouYeViewController.h"
#import "ZYTZRootViewController.h"
#import "MessageViewController.h"
#import "MyTableViewController.h"


@interface QYTabBarViewController ()

@end

@implementation QYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    ShouYeViewController *ShouYeView = [[ShouYeViewController alloc]init];
    [self addChildVc:ShouYeView title:@"首页" image:@"01" selectedImage:@"02"];
    
    ZYTZRootViewController *ZYTZView = [[ZYTZRootViewController alloc]init];
    [self addChildVc:ZYTZView title:@"作业通知" image:@"03" selectedImage:@"04"];
    
    MessageViewController *MessageView = [[MessageViewController alloc]init];
    [self addChildVc:MessageView title:@"消息" image:@"05" selectedImage:@"06"];
    
    MyTableViewController *MyselfView = [[MyTableViewController alloc]init];
    [self addChildVc:MyselfView title:@"我的" image:@"07" selectedImage:@"08"];
    
}


/**
 *  添加一个子控制器
 *
 *  @param childVc       子控制器
 *  @param title         标题
 *  @param image         图片
 *  @param selectedImage 选中的图片
 */
- (void)addChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage{
    
    // 设置子控制器的文字
    childVc.title = title; // 同时设置tabbar和navigationBar的文字
    
    // 设置子控制器的图片
    childVc.tabBarItem.image = [UIImage imageNamed:image];
    childVc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];

    // 先给外面传进来的小控制器 包装 一个导航控制器
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:childVc];

    // 添加为子控制器
    [self addChildViewController:nav];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
