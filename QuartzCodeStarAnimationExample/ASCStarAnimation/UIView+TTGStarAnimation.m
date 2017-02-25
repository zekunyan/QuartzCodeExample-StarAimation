//
//  UIView+TTGStarAnimation.m
//  Pods
//
//  Created by tutuge on 2017/2/22.
//
//

#import "UIView+TTGStarAnimation.h"
#import "TTGStarAnimationView.h"
#import <objc/runtime.h>

static NSString *const kTTGButtonStarAnimationStateKey = @"kTTGButtonStarAnimationStateKey";
static NSString *const kTTGButtonStarAnimationViewKey = @"kTTGButtonStarAnimationViewKey";

@implementation UIView (TTGStarAnimation)

#pragma mark - Public methods

- (void)ttg_setupStarAnimation {
    [self ttg_setupStarAnimationWithEdgeInset:UIEdgeInsetsZero];
}

- (void)ttg_setupStarAnimationWithEdgeInset:(UIEdgeInsets)inset {
    TTGStarAnimationView *starAnimationView = [self ttg_getStarAnimationView];

    if (!starAnimationView) {
        // Create new
        starAnimationView = [[TTGStarAnimationView alloc] initWithFrame:UIEdgeInsetsInsetRect(self.bounds, inset)];
        starAnimationView.userInteractionEnabled = NO;
        starAnimationView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:starAnimationView];
        // Save
        objc_setAssociatedObject(self, &kTTGButtonStarAnimationViewKey, starAnimationView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }

    // Remove all animation
    [starAnimationView removeAllAnimations];

    // Init layer
    starAnimationView.fillLayer.hidden = YES;
    starAnimationView.emptyLayer.hidden = NO;
    starAnimationView.replicatedLayer.hidden = YES;
    
    // Set init state
    [self ttg_setStarIsShow:NO];
}

- (void)ttg_showStarAnimated:(BOOL)animated complete:(void (^)())complete {
    TTGStarAnimationView *starAnimationView = [self ttg_getStarAnimationView];
    
    if (![self ttg_getStarIsShow]) {
        [self ttg_setStarIsShow:YES];
        
        // First remove all animation
        [starAnimationView removeAllAnimations];
        
        // Setup completion layer state
        void (^completionBlock)() = ^ {
            starAnimationView.fillLayer.hidden = NO;
            starAnimationView.emptyLayer.hidden = YES;
            starAnimationView.replicatedLayer.hidden = YES;
            
            // Call back
            if (complete) {
                complete();
            }
        };

        if (animated) {
            // Init animation layer state
            starAnimationView.fillLayer.hidden = NO;
            starAnimationView.emptyLayer.hidden = NO;
            starAnimationView.replicatedLayer.hidden = NO;
            // Run the animation
            [starAnimationView addShowAnimationCompletionBlock:^(BOOL finished) {
                completionBlock();
            }];
        } else {
            // Show star without animation
            completionBlock();
        }
        
    } else {
        // Update state
        starAnimationView.fillLayer.hidden = NO;
        starAnimationView.emptyLayer.hidden = YES;
        starAnimationView.replicatedLayer.hidden = YES;
    }
}

- (void)ttg_hideStarAnimated:(BOOL)animated complete:(void (^)())complete {
    TTGStarAnimationView *starAnimationView = [self ttg_getStarAnimationView];
    
    if ([self ttg_getStarIsShow]) {
        [self ttg_setStarIsShow:NO];
        
        // First remove all animation
        [starAnimationView removeAllAnimations];
        
        // Setup completion layer state
        void (^completionBlock)() = ^ {
            starAnimationView.fillLayer.hidden = YES;
            starAnimationView.emptyLayer.hidden = NO;
            starAnimationView.replicatedLayer.hidden = YES;
            
            // Call back
            if (complete) {
                complete();
            }
        };
        
        if (animated) {
            // Init animation layer state
            starAnimationView.fillLayer.hidden = NO;
            starAnimationView.emptyLayer.hidden = NO;
            starAnimationView.replicatedLayer.hidden = YES;
            // Run the animation
            [starAnimationView addHideAnimationCompletionBlock:^(BOOL finished) {
                completionBlock();
            }];
        } else {
            // Hide star without animation
            completionBlock();
        }
    } else {
        // Set hidden state
        starAnimationView.fillLayer.hidden = YES;
        starAnimationView.emptyLayer.hidden = NO;
        starAnimationView.replicatedLayer.hidden = YES;
    }
}

#pragma mark - Getter and setter

- (TTGStarAnimationView *)ttg_getStarAnimationView {
    return objc_getAssociatedObject(self, &kTTGButtonStarAnimationViewKey);
}

- (BOOL)ttg_getStarIsShow {
    return [objc_getAssociatedObject(self, &kTTGButtonStarAnimationStateKey) boolValue];
}

- (void)ttg_setStarIsShow:(BOOL)isShow {
    objc_setAssociatedObject(self, &kTTGButtonStarAnimationStateKey, @(isShow), OBJC_ASSOCIATION_COPY_NONATOMIC);
}

@end
