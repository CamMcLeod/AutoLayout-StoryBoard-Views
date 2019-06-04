//
//  ViewController.m
//  AutoLayout-StoryBoard
//
//  Created by Cameron Mcleod on 2019-06-04.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redViewWidthConstraint;

@property (weak, nonatomic) IBOutlet UIView *redView;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *redViewHeightConstraint;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redView = _redView;
    self.redViewWidthConstraint = _redViewWidthConstraint;
    self.redViewHeightConstraint = _redViewHeightConstraint;

    self.redViewWidthConstraint = [NSLayoutConstraint constraintWithItem:self.redView
                                                                                       attribute:NSLayoutAttributeWidth
                                                                                       relatedBy:NSLayoutRelationEqual toItem:nil
                                                                                       attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0
                                                                                        constant:120 + 3*NSLayoutAttributeBottomMargin];

    self.redViewWidthConstraint.active = YES;

    self.redViewHeightConstraint = [NSLayoutConstraint constraintWithItem:self.redView
                                                               attribute:NSLayoutAttributeHeight
                                                               relatedBy:NSLayoutRelationEqual toItem:nil
                                                               attribute:NSLayoutAttributeNotAnAttribute multiplier:1.0
                                                                constant:30 + 2*NSLayoutAttributeLeftMargin + NSLayoutAttributeRightMargin];
    self.redViewHeightConstraint.active = YES;
}



@end
