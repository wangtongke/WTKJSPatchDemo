//
//  WViewController.m
//  WTKJSPatchDemo
//
//  Created by 王同科 on 16/7/21.
//  Copyright © 2016年 王同科. All rights reserved.
//

#import "WViewController.h"

@interface WViewController ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation WViewController

- (instancetype)initWithTitle:(NSString *)text
{
    self = [super init];
    if (self)
    {
        self.label.text = text;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (UILabel *)label
{
    if (!_label)
    {
        _label = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
        _label.backgroundColor = [UIColor greenColor];
        [self.view addSubview:_label];
    }
    return _label;
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
