//
//  UIView+RectCorner.h
//  corner
//
//  Created by shanWu on 16/3/20.
//
//  为视图设置圆角效果
//

#import <UIKit/UIKit.h>

@interface UIView (RectCorner)

//设置顶部圆角效果
- (void)setCornerOnTopWithRadii:(CGFloat)radii;

//设置底部圆角效果
- (void)setCornerOnBottomWithRadii:(CGFloat)radii;

//设置四个角圆角效果
- (void)setAllCornerWithRadii:(CGFloat)radii;

//清空圆角效果 针对cornerRadius和masksToBounds设置的圆角效果是不起作用的。
- (void)setNoneCorner;

@end
