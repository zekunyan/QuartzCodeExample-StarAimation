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
 *  @param animated If with animation
 *  @param complete Show complete callback
 */
- (void)ttg_showStarAnimated:(BOOL)animated complete:(void (^)())complete;

/**
 *  Hide
 *
 *  @param animated If with animation
 *  @param complete Hide complete callback
 */
- (void)ttg_hideStarAnimated:(BOOL)animated complete:(void (^)())complete;

/**
 *  Current state
 *
 *  @return is show filled star
 */
- (BOOL)ttg_getStarIsShow;

@end
