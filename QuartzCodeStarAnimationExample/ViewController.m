//
//  ViewController.m
//  QuartzCodeStarAnimationExample
//
//  Created by tutuge on 2017/2/22.
//  Copyright © 2017年 tutuge. All rights reserved.
//

#import "ViewController.h"
#import "UIView+TTGStarAnimation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _button.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _button.layer.borderWidth = 1;
    _button.layer.cornerRadius = CGRectGetWidth(_button.frame) / 2;
    _button.layer.masksToBounds = YES;

    [_button ttg_setupStarAnimation];
}

- (IBAction)onTapButton:(UIButton *)button {
    if ([button ttg_getStarIsShow]) {
        _infoLabel.text = @"Tap to star !";
        [button ttg_hideStarAnimated:YES complete:^{
            NSLog(@"hide done");
        }];
    } else {
        _infoLabel.text = @"Tap to unstar !";
        [button ttg_showStarAnimated:YES complete:^{
            NSLog(@"show done");
        }];
    }
}

@end
