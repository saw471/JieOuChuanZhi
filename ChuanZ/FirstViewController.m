//
//  FirstViewController.m
//  ChuanZ
//
//  Created by apple on 2018/6/6.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UINavigationController+Premers.h"
#import "UIViewController+permers.h"
@interface FirstViewController ()

@end

@implementation FirstViewController


-(instancetype)initWithParameters:(id)parameters{
    self = [super initWithParameters:parameters];
    if (self) {
        
        NSLog(@" AAAAA = %@",parameters);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    SecondViewController *svc =[[SecondViewController alloc]init];
    
    
//    NVC *VC = (NVC *)self.navigationController;
    
    NSDictionary *dic = @{@"1" : @"aaaa",@"2" : @"bbbbbb"};
    
    
    [self.navigationController pushVC:NSStringFromClass([SecondViewController class]) object:dic animate:YES];
    
    [self presentVCFromClass:NSStringFromClass([SecondViewController class]) object:dic animate:YES completeBlock:nil];
    
   

    
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
