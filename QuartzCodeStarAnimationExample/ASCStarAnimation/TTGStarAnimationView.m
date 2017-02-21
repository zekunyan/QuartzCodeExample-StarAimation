//
//  TTGStarAnimationView.m
//
//  Code generated using QuartzCode 1.54.0 on 2017/2/22.
//  www.quartzcodeapp.com
//

#import "TTGStarAnimationView.h"
#import "QCMethod.h"

@interface TTGStarAnimationView () <CAAnimationDelegate>

@property (nonatomic, strong) NSMutableDictionary * layers;
@property (nonatomic, strong) NSMapTable * completionBlocks;
@property (nonatomic, assign) BOOL  updateLayerValueForCompletedAnimation;


@end

@implementation TTGStarAnimationView

#pragma mark - Public getter

- (CALayer *)fillLayer {
    return _layers[@"star_animation_fill"];
}

- (CALayer *)emptyLayer {
    return _layers[@"star_animation_empty"];
}

- (CALayer *)replicatedLayer {
    return _layers[@"replicator"];
}

#pragma mark - Life Cycle

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupProperties];
        [self setupLayers];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setupProperties];
        [self setupLayers];
    }
    return self;
}

- (void)setFrame:(CGRect)frame{
    [super setFrame:frame];
    [self setupLayerFrames];
}

- (void)setBounds:(CGRect)bounds{
    [super setBounds:bounds];
    [self setupLayerFrames];
}

- (void)setupProperties{
    self.completionBlocks = [NSMapTable mapTableWithKeyOptions:NSPointerFunctionsOpaqueMemory valueOptions:NSPointerFunctionsStrongMemory];;
    self.layers = [NSMutableDictionary dictionary];
    
}

- (void)setupLayers{
    CALayer * star_animation_empty = [CALayer layer];
    [self.layer addSublayer:star_animation_empty];
    self.layers[@"star_animation_empty"] = star_animation_empty;
    
    CALayer * star_animation_fill = [CALayer layer];
    [self.layer addSublayer:star_animation_fill];
    self.layers[@"star_animation_fill"] = star_animation_fill;
    
    CAReplicatorLayer * replicator = [CAReplicatorLayer layer];
    [self.layer addSublayer:replicator];
    self.layers[@"replicator"] = replicator;
    {
        CAShapeLayer * spark1 = [CAShapeLayer layer];
        [replicator addSublayer:spark1];
        self.layers[@"spark1"] = spark1;
        CAShapeLayer * spark2 = [CAShapeLayer layer];
        [replicator addSublayer:spark2];
        self.layers[@"spark2"] = spark2;
        CAShapeLayer * star_line = [CAShapeLayer layer];
        [replicator addSublayer:star_line];
        self.layers[@"star_line"] = star_line;
    }
    
    
    [self resetLayerPropertiesForLayerIdentifiers:nil];
    [self setupLayerFrames];
}

- (void)resetLayerPropertiesForLayerIdentifiers:(NSArray *)layerIds{
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    
    if(!layerIds || [layerIds containsObject:@"star_animation_empty"]){
        CALayer * star_animation_empty = self.layers[@"star_animation_empty"];
        star_animation_empty.contents = (id)[UIImage imageNamed:@"star_animation_empty"].CGImage;
    }
    if(!layerIds || [layerIds containsObject:@"star_animation_fill"]){
        CALayer * star_animation_fill = self.layers[@"star_animation_fill"];
        star_animation_fill.contents = (id)[UIImage imageNamed:@"star_animation_fill"].CGImage;
    }
    if(!layerIds || [layerIds containsObject:@"replicator"]){
        CAReplicatorLayer * replicator = self.layers[@"replicator"];
        replicator.instanceCount     = 5;
        replicator.instanceColor     = [UIColor whiteColor].CGColor;
        replicator.instanceTransform = CATransform3DMakeRotation(72 * M_PI/180, 0, 0, -1);
    }
    if(!layerIds || [layerIds containsObject:@"spark1"]){
        CAShapeLayer * spark1 = self.layers[@"spark1"];
        spark1.opacity     = 0;
        spark1.lineCap     = kCALineCapRound;
        spark1.lineJoin    = kCALineJoinRound;
        spark1.fillColor   = [UIColor colorWithRed:0.98 green: 0.416 blue:0.188 alpha:0.7].CGColor;
        spark1.strokeColor = [UIColor colorWithRed:0.98 green: 0.416 blue:0.188 alpha:1].CGColor;
        spark1.lineWidth   = 0;
    }
    if(!layerIds || [layerIds containsObject:@"spark2"]){
        CAShapeLayer * spark2 = self.layers[@"spark2"];
        spark2.opacity     = 0;
        spark2.lineCap     = kCALineCapRound;
        spark2.lineJoin    = kCALineJoinRound;
        spark2.fillColor   = [UIColor colorWithRed:0.98 green: 0.416 blue:0.188 alpha:0.7].CGColor;
        spark2.strokeColor = [UIColor colorWithRed:0.98 green: 0.416 blue:0.188 alpha:1].CGColor;
        spark2.lineWidth   = 0;
    }
    if(!layerIds || [layerIds containsObject:@"star_line"]){
        CAShapeLayer * star_line = self.layers[@"star_line"];
        star_line.lineCap     = kCALineCapRound;
        star_line.lineJoin    = kCALineJoinRound;
        star_line.fillColor   = [UIColor colorWithRed:1 green: 0.416 blue:0 alpha:0.7].CGColor;
        star_line.strokeColor = [UIColor colorWithRed:1 green: 0.416 blue:0 alpha:0.7].CGColor;
        star_line.lineWidth   = 0;
    }
    
    [CATransaction commit];
}

- (void)setupLayerFrames{
    [CATransaction begin];
    [CATransaction setDisableActions:YES];
    
    CALayer * star_animation_empty = self.layers[@"star_animation_empty"];
    star_animation_empty.frame     = CGRectMake(0.24693 * CGRectGetWidth(star_animation_empty.superlayer.bounds), 0.21835 * CGRectGetHeight(star_animation_empty.superlayer.bounds), 0.52331 * CGRectGetWidth(star_animation_empty.superlayer.bounds), 0.52331 * CGRectGetHeight(star_animation_empty.superlayer.bounds));
    
    CALayer * star_animation_fill  = self.layers[@"star_animation_fill"];
    star_animation_fill.frame      = CGRectMake(0.16858 * CGRectGetWidth(star_animation_fill.superlayer.bounds), 0.17 * CGRectGetHeight(star_animation_fill.superlayer.bounds), 0.66 * CGRectGetWidth(star_animation_fill.superlayer.bounds), 0.66 * CGRectGetHeight(star_animation_fill.superlayer.bounds));
    
    CAReplicatorLayer * replicator = self.layers[@"replicator"];
    replicator.frame               = CGRectMake(-0.00284 * CGRectGetWidth(replicator.superlayer.bounds), 0, 1.00284 * CGRectGetWidth(replicator.superlayer.bounds),  CGRectGetHeight(replicator.superlayer.bounds));
    
    CAShapeLayer * spark1          = self.layers[@"spark1"];
    spark1.frame                   = CGRectMake(0.12947 * CGRectGetWidth(spark1.superlayer.bounds), 0.54 * CGRectGetHeight(spark1.superlayer.bounds), 0.01994 * CGRectGetWidth(spark1.superlayer.bounds), 0.02 * CGRectGetHeight(spark1.superlayer.bounds));
    spark1.path                    = [self spark1PathWithBounds:[self.layers[@"spark1"] bounds]].CGPath;
    
    CAShapeLayer * spark2          = self.layers[@"spark2"];
    spark2.frame                   = CGRectMake(0.17933 * CGRectGetWidth(spark2.superlayer.bounds), 0.68 * CGRectGetHeight(spark2.superlayer.bounds), 0.01994 * CGRectGetWidth(spark2.superlayer.bounds), 0.02 * CGRectGetHeight(spark2.superlayer.bounds));
    spark2.path                    = [self spark2PathWithBounds:[self.layers[@"spark2"] bounds]].CGPath;
    
    CAShapeLayer * star_line       = self.layers[@"star_line"];
    star_line.frame                = CGRectMake(0.37301 * CGRectGetWidth(star_line.superlayer.bounds), 0.40997 * CGRectGetHeight(star_line.superlayer.bounds), 0.09636 * CGRectGetWidth(star_line.superlayer.bounds), 0.02 * CGRectGetHeight(star_line.superlayer.bounds));
    star_line.path                 = [self star_linePathWithBounds:[self.layers[@"star_line"] bounds]].CGPath;
    
    [CATransaction commit];
}

#pragma mark - Animation Setup

- (void)addShowAnimation{
    [self addShowAnimationCompletionBlock:nil];
}

- (void)addShowAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
    if (completionBlock){
        CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
        completionAnim.duration = 0.489;
        completionAnim.delegate = self;
        [completionAnim setValue:@"show" forKey:@"animId"];
        [completionAnim setValue:@(NO) forKey:@"needEndAnim"];
        [self.layer addAnimation:completionAnim forKey:@"show"];
        [self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"show"]];
    }
    
    NSString * fillMode = kCAFillModeForwards;
    
    CALayer * star_animation_empty = self.layers[@"star_animation_empty"];
    
    ////Star_animation_empty animation
    CAKeyframeAnimation * star_animation_emptyBoundsAnim = [CAKeyframeAnimation animationWithKeyPath:@"bounds"];
    star_animation_emptyBoundsAnim.values = @[[NSValue valueWithCGRect:CGRectMake(0, 0, 0.52331 * CGRectGetWidth(star_animation_empty.superlayer.bounds), 0.52331 * CGRectGetHeight(star_animation_empty.superlayer.bounds))], [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)]];
    star_animation_emptyBoundsAnim.keyTimes = @[@0, @1];
    star_animation_emptyBoundsAnim.duration = 0.27;
    star_animation_emptyBoundsAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAKeyframeAnimation * star_animation_emptyOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    star_animation_emptyOpacityAnim.values = @[@1, @0];
    star_animation_emptyOpacityAnim.keyTimes = @[@0, @1];
    star_animation_emptyOpacityAnim.duration = 0.27;
    star_animation_emptyOpacityAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAAnimationGroup * star_animation_emptyShowAnim = [QCMethod groupAnimations:@[star_animation_emptyBoundsAnim, star_animation_emptyOpacityAnim] fillMode:fillMode];
    [star_animation_empty addAnimation:star_animation_emptyShowAnim forKey:@"star_animation_emptyShowAnim"];
    
    CALayer * star_animation_fill = self.layers[@"star_animation_fill"];
    
    ////Star_animation_fill animation
    CAKeyframeAnimation * star_animation_fillBoundsAnim = [CAKeyframeAnimation animationWithKeyPath:@"bounds"];
    star_animation_fillBoundsAnim.values   = @[[NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)], [NSValue valueWithCGRect:CGRectMake(0, 0, 0.66 * CGRectGetWidth(star_animation_fill.superlayer.bounds), 0.66 * CGRectGetHeight(star_animation_fill.superlayer.bounds))]];
    star_animation_fillBoundsAnim.keyTimes = @[@0, @1];
    star_animation_fillBoundsAnim.duration = 0.27;
    star_animation_fillBoundsAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAAnimationGroup * star_animation_fillShowAnim = [QCMethod groupAnimations:@[star_animation_fillBoundsAnim] fillMode:fillMode];
    [star_animation_fill addAnimation:star_animation_fillShowAnim forKey:@"star_animation_fillShowAnim"];
    
    ////Spark1 animation
    CAKeyframeAnimation * spark1OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    spark1OpacityAnim.values    = @[@0, @1, @0];
    spark1OpacityAnim.keyTimes  = @[@0, @0.512, @1];
    spark1OpacityAnim.duration  = 0.327;
    spark1OpacityAnim.beginTime = 0.0613;
    
    CAShapeLayer * spark1 = self.layers[@"spark1"];
    
    CAKeyframeAnimation * spark1TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    spark1TransformAnim.values    = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0, 1, 1)],
                                      [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 1, 1)],
                                      [NSValue valueWithCATransform3D:CATransform3DMakeScale(0, 1, 1)]];
    spark1TransformAnim.keyTimes  = @[@0, @0.453, @1];
    spark1TransformAnim.duration  = 0.327;
    spark1TransformAnim.beginTime = 0.0613;
    
    CAAnimationGroup * spark1ShowAnim = [QCMethod groupAnimations:@[spark1OpacityAnim, spark1TransformAnim] fillMode:fillMode];
    [spark1 addAnimation:spark1ShowAnim forKey:@"spark1ShowAnim"];
    
    ////Spark2 animation
    CAKeyframeAnimation * spark2OpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    spark2OpacityAnim.values    = @[@0, @1, @0];
    spark2OpacityAnim.keyTimes  = @[@0, @0.512, @1];
    spark2OpacityAnim.duration  = 0.327;
    spark2OpacityAnim.beginTime = 0.0613;
    
    CAShapeLayer * spark2 = self.layers[@"spark2"];
    
    CAKeyframeAnimation * spark2TransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    spark2TransformAnim.values    = @[[NSValue valueWithCATransform3D:CATransform3DMakeScale(0, 1, 1)],
                                      [NSValue valueWithCATransform3D:CATransform3DMakeScale(2, 1, 1)],
                                      [NSValue valueWithCATransform3D:CATransform3DMakeScale(0, 1, 1)]];
    spark2TransformAnim.keyTimes  = @[@0, @0.453, @1];
    spark2TransformAnim.duration  = 0.327;
    spark2TransformAnim.beginTime = 0.0613;
    
    CAAnimationGroup * spark2ShowAnim = [QCMethod groupAnimations:@[spark2OpacityAnim, spark2TransformAnim] fillMode:fillMode];
    [spark2 addAnimation:spark2ShowAnim forKey:@"spark2ShowAnim"];
    
    ////Star_line animation
    CAKeyframeAnimation * star_lineOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    star_lineOpacityAnim.values         = @[@0, @1];
    star_lineOpacityAnim.keyTimes       = @[@0, @1];
    star_lineOpacityAnim.duration       = 0.27;
    star_lineOpacityAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAShapeLayer * star_line = self.layers[@"star_line"];
    
    CAKeyframeAnimation * star_linePositionAnim = [CAKeyframeAnimation animationWithKeyPath:@"position"];
    star_linePositionAnim.values         = @[[NSValue valueWithCGPoint:CGPointMake(0.42164 * CGRectGetWidth(star_line.superlayer.bounds), 0.42 * CGRectGetHeight(star_line.superlayer.bounds))], [NSValue valueWithCGPoint:CGPointMake(0.13246 * CGRectGetWidth(star_line.superlayer.bounds), 0.4 * CGRectGetHeight(star_line.superlayer.bounds))]];
    star_linePositionAnim.keyTimes       = @[@0, @1];
    star_linePositionAnim.duration       = 0.27;
    star_linePositionAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAKeyframeAnimation * star_lineTransformAnim = [CAKeyframeAnimation animationWithKeyPath:@"transform"];
    star_lineTransformAnim.values         = @[[NSValue valueWithCATransform3D:CATransform3DIdentity],
                                              [NSValue valueWithCATransform3D:CATransform3DMakeScale(0, 1, 1)]];
    star_lineTransformAnim.keyTimes       = @[@0, @1];
    star_lineTransformAnim.duration       = 0.367;
    star_lineTransformAnim.beginTime      = 0.122;
    star_lineTransformAnim.timingFunction = [CAMediaTimingFunction functionWithControlPoints:0.25 :0.1 :0.25 :1];
    
    CAAnimationGroup * star_lineShowAnim = [QCMethod groupAnimations:@[star_lineOpacityAnim, star_linePositionAnim, star_lineTransformAnim] fillMode:fillMode];
    [star_line addAnimation:star_lineShowAnim forKey:@"star_lineShowAnim"];
}

- (void)addHideAnimation{
    [self addHideAnimationCompletionBlock:nil];
}

- (void)addHideAnimationCompletionBlock:(void (^)(BOOL finished))completionBlock{
    if (completionBlock){
        CABasicAnimation * completionAnim = [CABasicAnimation animationWithKeyPath:@"completionAnim"];;
        completionAnim.duration = 0.186;
        completionAnim.delegate = self;
        [completionAnim setValue:@"hide" forKey:@"animId"];
        [completionAnim setValue:@(NO) forKey:@"needEndAnim"];
        [self.layer addAnimation:completionAnim forKey:@"hide"];
        [self.completionBlocks setObject:completionBlock forKey:[self.layer animationForKey:@"hide"]];
    }
    
    NSString * fillMode = kCAFillModeForwards;
    
    CALayer * star_animation_empty = self.layers[@"star_animation_empty"];
    
    ////Star_animation_empty animation
    CAKeyframeAnimation * star_animation_emptyBoundsAnim = [CAKeyframeAnimation animationWithKeyPath:@"bounds"];
    star_animation_emptyBoundsAnim.values = @[[NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)], [NSValue valueWithCGRect:CGRectMake(0, 0, 0.52331 * CGRectGetWidth(star_animation_empty.superlayer.bounds), 0.52331 * CGRectGetHeight(star_animation_empty.superlayer.bounds))]];
    star_animation_emptyBoundsAnim.keyTimes = @[@0, @1];
    star_animation_emptyBoundsAnim.duration = 0.186;
    
    CAKeyframeAnimation * star_animation_emptyOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    star_animation_emptyOpacityAnim.values = @[@0, @1];
    star_animation_emptyOpacityAnim.keyTimes = @[@0, @1];
    star_animation_emptyOpacityAnim.duration = 0.186;
    
    CAAnimationGroup * star_animation_emptyHideAnim = [QCMethod groupAnimations:@[star_animation_emptyBoundsAnim, star_animation_emptyOpacityAnim] fillMode:fillMode];
    [star_animation_empty addAnimation:star_animation_emptyHideAnim forKey:@"star_animation_emptyHideAnim"];
    
    ////Star_animation_fill animation
    CAKeyframeAnimation * star_animation_fillOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    star_animation_fillOpacityAnim.values = @[@1, @0];
    star_animation_fillOpacityAnim.keyTimes = @[@0, @1];
    star_animation_fillOpacityAnim.duration = 0.186;
    
    CALayer * star_animation_fill = self.layers[@"star_animation_fill"];
    
    CAKeyframeAnimation * star_animation_fillBoundsAnim = [CAKeyframeAnimation animationWithKeyPath:@"bounds"];
    star_animation_fillBoundsAnim.values   = @[[NSValue valueWithCGRect:CGRectMake(0, 0, 0.66 * CGRectGetWidth(star_animation_fill.superlayer.bounds), 0.66 * CGRectGetHeight(star_animation_fill.superlayer.bounds))], [NSValue valueWithCGRect:CGRectMake(0, 0, 0, 0)]];
    star_animation_fillBoundsAnim.keyTimes = @[@0, @1];
    star_animation_fillBoundsAnim.duration = 0.186;
    
    CAAnimationGroup * star_animation_fillHideAnim = [QCMethod groupAnimations:@[star_animation_fillOpacityAnim, star_animation_fillBoundsAnim] fillMode:fillMode];
    [star_animation_fill addAnimation:star_animation_fillHideAnim forKey:@"star_animation_fillHideAnim"];
    
    ////Replicator animation
    CAKeyframeAnimation * replicatorOpacityAnim = [CAKeyframeAnimation animationWithKeyPath:@"opacity"];
    replicatorOpacityAnim.values   = @[@1, @0];
    replicatorOpacityAnim.keyTimes = @[@0, @1];
    replicatorOpacityAnim.duration = 0.186;
    
    CAKeyframeAnimation * replicatorHiddenAnim = [CAKeyframeAnimation animationWithKeyPath:@"hidden"];
    replicatorHiddenAnim.values   = @[@YES, @YES];
    replicatorHiddenAnim.keyTimes = @[@0, @1];
    replicatorHiddenAnim.duration = 0.186;
    
    CAAnimationGroup * replicatorHideAnim = [QCMethod groupAnimations:@[replicatorOpacityAnim, replicatorHiddenAnim] fillMode:fillMode];
    [self.layers[@"replicator"] addAnimation:replicatorHideAnim forKey:@"replicatorHideAnim"];
}

#pragma mark - Animation Cleanup

- (void)animationDidStop:(CAAnimation *)anim finished:(BOOL)flag{
    void (^completionBlock)(BOOL) = [self.completionBlocks objectForKey:anim];;
    if (completionBlock){
        [self.completionBlocks removeObjectForKey:anim];
        if ((flag && self.updateLayerValueForCompletedAnimation) || [[anim valueForKey:@"needEndAnim"] boolValue]){
            [self updateLayerValuesForAnimationId:[anim valueForKey:@"animId"]];
            [self removeAnimationsForAnimationId:[anim valueForKey:@"animId"]];
        }
        completionBlock(flag);
    }
}

- (void)updateLayerValuesForAnimationId:(NSString *)identifier{
    if([identifier isEqualToString:@"show"]){
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"star_animation_empty"] animationForKey:@"star_animation_emptyShowAnim"] theLayer:self.layers[@"star_animation_empty"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"star_animation_fill"] animationForKey:@"star_animation_fillShowAnim"] theLayer:self.layers[@"star_animation_fill"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"spark1"] animationForKey:@"spark1ShowAnim"] theLayer:self.layers[@"spark1"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"spark2"] animationForKey:@"spark2ShowAnim"] theLayer:self.layers[@"spark2"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"star_line"] animationForKey:@"star_lineShowAnim"] theLayer:self.layers[@"star_line"]];
    }
    else if([identifier isEqualToString:@"hide"]){
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"star_animation_empty"] animationForKey:@"star_animation_emptyHideAnim"] theLayer:self.layers[@"star_animation_empty"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"star_animation_fill"] animationForKey:@"star_animation_fillHideAnim"] theLayer:self.layers[@"star_animation_fill"]];
        [QCMethod updateValueFromPresentationLayerForAnimation:[self.layers[@"replicator"] animationForKey:@"replicatorHideAnim"] theLayer:self.layers[@"replicator"]];
    }
}

- (void)removeAnimationsForAnimationId:(NSString *)identifier{
    if([identifier isEqualToString:@"show"]){
        [self.layers[@"star_animation_empty"] removeAnimationForKey:@"star_animation_emptyShowAnim"];
        [self.layers[@"star_animation_fill"] removeAnimationForKey:@"star_animation_fillShowAnim"];
        [self.layers[@"spark1"] removeAnimationForKey:@"spark1ShowAnim"];
        [self.layers[@"spark2"] removeAnimationForKey:@"spark2ShowAnim"];
        [self.layers[@"star_line"] removeAnimationForKey:@"star_lineShowAnim"];
    }
    else if([identifier isEqualToString:@"hide"]){
        [self.layers[@"star_animation_empty"] removeAnimationForKey:@"star_animation_emptyHideAnim"];
        [self.layers[@"star_animation_fill"] removeAnimationForKey:@"star_animation_fillHideAnim"];
        [self.layers[@"replicator"] removeAnimationForKey:@"replicatorHideAnim"];
    }
}

- (void)removeAllAnimations{
    [self.layers enumerateKeysAndObjectsUsingBlock:^(id key, CALayer *layer, BOOL *stop) {
        [layer removeAllAnimations];
    }];
}

#pragma mark - Bezier Path

- (UIBezierPath*)spark1PathWithBounds:(CGRect)bounds{
    UIBezierPath * spark1Path = [UIBezierPath bezierPathWithOvalInRect:bounds];
    return spark1Path;
}

- (UIBezierPath*)spark2PathWithBounds:(CGRect)bounds{
    UIBezierPath * spark2Path = [UIBezierPath bezierPathWithOvalInRect:bounds];
    return spark2Path;
}

- (UIBezierPath*)star_linePathWithBounds:(CGRect)bounds{
    UIBezierPath * star_linePath = [UIBezierPath bezierPathWithRoundedRect:bounds cornerRadius:2];
    return star_linePath;
}

@end
