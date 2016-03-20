//
//  UIView+RectCorner.m
//  corner
//
//  Created by shanWu on 16/3/20.
//
//  为视图设置圆角效果
//

#import "UIView+RectCorner.h"

@implementation UIView (RectCorner)

- (void)setCornerOnTopWithRadii:(CGFloat)radii {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerTopLeft | UIRectCornerTopRight)
                                           cornerRadii:CGSizeMake(radii, radii)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)setCornerOnBottomWithRadii:(CGFloat)radii {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                     byRoundingCorners:(UIRectCornerBottomLeft | UIRectCornerBottomRight)
                                           cornerRadii:CGSizeMake(radii, radii)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)setAllCornerWithRadii:(CGFloat)radii {
    UIBezierPath *maskPath;
    maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                          cornerRadius:radii];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
}

- (void)setNoneCorner {
    self.layer.mask = nil;
}

@end
