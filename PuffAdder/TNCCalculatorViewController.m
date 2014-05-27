//
//  TNCCalculatorViewController.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewController.h"
#import "TNCPaddedTextField.h"

NSString * const TNCCalcuatorViewControllerStoryboardName = @"Main";
NSString * const TNCCalcuatorViewControllerStoryboardIdentifier = @"CalculatorViewController";

@implementation TNCCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputField.inputAccessoryView = self.toolbar;
    self.toolbar.items = @[self.addButton];
    self.inputField.attributedPlaceholder = [self preferredAttributedPlaceholder];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGFloat topPadding = CGRectGetHeight([UIApplication sharedApplication].statusBarFrame);
    CGFloat horizontalPadding = CGRectGetMinX(self.totalCell.textLabel.frame);
    self.inputField.contentInsets = UIEdgeInsetsMake(topPadding, horizontalPadding, 0, horizontalPadding);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.inputField becomeFirstResponder];
}

- (NSAttributedString *)preferredAttributedPlaceholder {
    NSString *string = self.inputField.placeholder;
    NSDictionary *attributes = @{NSForegroundColorAttributeName: self.inputField.textColor};
    return [[NSAttributedString alloc] initWithString:string attributes:attributes];
}

@end
