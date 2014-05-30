//
//  TNCCalculatorViewController.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewController.h"
#import "TNCPaddedTextField.h"
#import "TNCCalculator.h"

NSString * const TNCCalcuatorViewControllerStoryboardName = @"Main";
NSString * const TNCCalcuatorViewControllerStoryboardIdentifier = @"CalculatorViewController";

@implementation TNCCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputField.inputAccessoryView = self.toolbar;
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

- (UIStatusBarStyle)preferredStatusBarStyle {
    return UIStatusBarStyleLightContent;
}

- (void)addButtonPressed {
    [self updateModel];
    [self updateTotalText];
    [self updateAverageText];
    [self updateCountText];
    [self clearInputField];
}

- (void)resetButtonPressed {
    [self clearInputField];
    [self clearModel];
    [self clearTotalText];
    [self clearAverageText];
    [self clearCountText];
}

#pragma mark Model

- (void)updateModel {
    NSString *numericString = [self inputFieldNumericString];
    NSDecimalNumber *number = [NSDecimalNumber decimalNumberWithString:numericString];
    [self.calculator updateWithNumber:[number doubleValue]];
}

- (void)clearModel {
    self.calculator = [TNCCalculator new];
}

#pragma mark Total Text

- (void)updateTotalText {
    NSNumber *total = [NSNumber numberWithDouble:self.calculator.total];
    self.totalCell.detailTextLabel.text = [total stringValue];
}

- (void)clearTotalText {
    self.totalCell.detailTextLabel.text = @"0";
}

#pragma mark Average Text

- (void)updateAverageText {
    NSNumber *average = [NSNumber numberWithDouble:self.calculator.average];
    self.averageCell.detailTextLabel.text = [average stringValue];
}

- (void)clearAverageText {
    self.averageCell.detailTextLabel.text = @"0";
}

#pragma mark Count Text

- (void)updateCountText {
    NSNumber *count = [NSNumber numberWithDouble:self.calculator.count];
    self.countCell.detailTextLabel.text = [count stringValue];
}

- (void)clearCountText {
    self.countCell.detailTextLabel.text = @"0";
}

#pragma mark Input Field

- (void)clearInputField {
    self.inputField.text = nil;
}

- (NSString *)inputFieldNumericString {
    return [self.inputField.text length] ? self.inputField.text : @"0";
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    return [self.inputField.text length] > 0 || ![string isEqualToString:@"0"];
}

@end
