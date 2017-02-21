//
//  UIView+TTGStarAnimation.h
//  Pods
//
//  Created by tutuge on 2017/2/22.
//
//

#import <UIKit/UIKit.h>

@interface UIView (TTGStarAnimation)

/**
 *  Add star animation view with zero inset
 */
- (void)ttg_setupStarAnimation;

/**
 *  Add star animation view with input inset
 *
 *  @param inset frame inset, like padding
 */
- (void)ttg_setupStarAnimationWithEdgeInset:(UIEdgeInsets)inset;

/**
 *  Show
 *
 *  @param animated if with animation
 */
- (void)ttg_showStarAnimated:(BOOL)animated;

/**
 *  Hide
 *
 *  @param animated if with animation
 */
- (void)ttg_hideStarAnimated:(BOOL)animated;

/**
 *  Current state
 *
 *  @return is show filled star
 */
- (BOOL)ttg_getStarIsShow;

@end
