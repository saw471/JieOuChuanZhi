//
//  SecondViewController.m
//  ChuanZ
//
//  Created by apple on 2018/6/6.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "SecondViewController.h"
#import "UIViewController+permers.h"
#import "UINavigationController+Premers.h"
#import "FirstViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
-(id)initWithParameters:(id)parameters
{
    self = [super initWithParameters:parameters];
    if (self) {
        
        NSLog(@" PushController = %@",parameters);
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor blueColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{

    NSArray *viewcontrollers=self.navigationController.viewControllers;
    if (viewcontrollers.count>1)
    {
        // 如果最后一个控制器是自己
        if ([viewcontrollers objectAtIndex:viewcontrollers.count-1] == self)
        {
            //push方式
//            [self.navigationController popViewControllerAnimated:YES];

            [self.navigationController bsy_PopVC:NSStringFromClass([self class]) childClass:[NSMutableDictionary dictionaryWithObject:self forKey:NSStringFromClass([self class])] object:@"BSY_DecouplingNavigationBaseVC 回来了啊啊" animate:YES completeBlock:^(id completeObj) {
                
                //        NSLog(@"222 == %@",completeObj);
                
            }];
            
            
        }
    }
    else
    {
        //present方式
//        [self.navigationController dismissViewControllerAnimated:YES completion:nil];

        NSDictionary *dic = @{@"1" : @"aaaa"};

        [self dissMissVCFromClass:NSStringFromClass([self class]) childClass:[NSMutableDictionary dictionaryWithObject:self forKey:NSStringFromClass([self class])] object:dic animate:YES completeBlock:^(id completeObj) {
            
            
        }];

    }
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
