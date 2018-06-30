//
//  UIViewController+permers.m
//  ChuanZ
//
//  Created by apple on 2018/6/6.
//  Copyright © 2018年 apple. All rights reserved.
//

#import "UIViewController+permers.h"

@implementation UIViewController (permers)
/**
 重写init方法
 
 @param parameters 参数
 @return 返回VC
 */
-(instancetype)initWithParameters:(id)parameters
{
    self = [super init];
    
    if (self) {
        
        
    }
    return self;
}
/**
 跳转事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)presentVCFromClass:(NSString *)classString object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{
    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        [self presentViewController:(UIViewController *)[[class alloc]initWithParameters:object] animated:animate completion:nil];
        if (completeBlock) {
            completeBlock(NSStringFromClass([class class]));
        }
    }else{
        
        if (completeBlock) {
            completeBlock(NSStringFromClass([NSError class]));
        }
        
    }
}
/**
 dissMiss事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)dissMissVCFromClass:(NSString *)classString childClass:(NSMutableDictionary *)childClass object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock
{
    if ([classString isKindOfClass:[NSString class]]) {
        Class class = NSClassFromString(classString);
        UIViewController *vc = nil;
        vc = [childClass objectForKey:classString];
        if ([vc isKindOfClass:[class class]]) {
            [vc dismissViewControllerAnimated:animate completion:nil];
            if (completeBlock) {
                completeBlock(NSStringFromClass([class class]));
            }
        }else{
            if (completeBlock) {
                completeBlock(NSStringFromClass([NSError class]));
            }
        }
    }else{
        if (completeBlock) {
            completeBlock(NSStringFromClass([NSError class]));
        }
    }
}
@end
