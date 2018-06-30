//
//  UINavigationController+Premers.h
//  ChuanZ
//
//  Created by apple on 2018/6/6.
//  Copyright © 2018年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (Premers)
/**
 在目标控制器初始化的时候传入参数（可以为空）
 @param parameters 参数
 @return 返回初始化的自己
 */
-(instancetype)initWithParameters:(id)parameters;



-(void)pushVC:(NSString *)classString object:(id)object animate:(BOOL)animate ;



/**
 Push事件
 @param classString 需要跳转的控制器
 @param object 跳转的时候需要传入的参数
 @param completeBlock 跳转完成的回调
 */
-(void)bsy_PushVC:(NSString *)classString object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock;

/**
 pop返回事件
 @param classString 需要返回控制器
 @param object 返回的时候需要传入的参数
 @param completeBlock 返回完成的回调
 */
-(void)bsy_PopVC:(NSString *)classString  childClass:(NSMutableDictionary *)childClass object:(id)object animate:(BOOL)animate completeBlock:(void(^)(id completeObj))completeBlock;
@end
