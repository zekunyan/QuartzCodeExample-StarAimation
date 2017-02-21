//
//  TTGStarAnimationView.h
//
//  Code generated using QuartzCode 1.54.0 on 2017/2/22.
//  www.quartzcodeapp.com
//

#import <UIKit/UIKit.h>

@interface TTGStarAnimationView : UIView
@property (nonatomic, strong, readonly) CALayer *fillLayer;
@property (nonatomic, strong, readonly) CALayer *emptyLayer;
@property (nonatomic, strong, readonly) CALayer *replicatedLayer;

- (void)addShowAnimation;
- (void)addShowAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock;

- (void)addHideAnimation;
- (void)addHideAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock;

- (void)removeAnimationsForAnimationId:(NSString *)identifier;
- (void)removeAllAnimations;

@end
