//
//  ViewController.m
//  WTKJSPatchDemo
//
//  Created by 王同科 on 16/7/21.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "ViewController.h"
#import "WViewController.h"
#import "JPEngine.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@property(nonnull,strong)UIImageView *imageView;
//@property(nonatomic,strong)AFHTTPSessionManager *manager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSLog(@"%@",NSHomeDirectory());
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:self];
    UIWindow *window = [[UIApplication sharedApplication].delegate window];
    window.rootViewController = nav;
    self.dataArray = @[@"1",@"2",@"3",@"4"].mutableCopy;
  
    _tableView = [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
//    [self wangtongke];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"%@",_dataArray[indexPath.row]);

    
//    [self.navigationController pushViewController:vc animated:YES];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
