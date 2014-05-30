//
//  TNCCalculatorViewControllerTests+InputField.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests+InputField.h"
#import "TNCPaddedTextField.h"
#import "TNCCalculator.h"

@implementation TNCCalculatorViewControllerTests (InputField)

- (void)testInputFieldClass {
    Class class = [self.calculatorViewController.inputField class];
    Class expectedClass = [TNCPaddedTextField class];
    XCTAssertEqualObjects(class, expectedClass);
}

- (void)testInputFieldBorderStyle {
    UITextBorderStyle borderStyle = self.calculatorViewController.inputField.borderStyle;
    UITextBorderStyle expectedBorderStyle = UITextBorderStyleNone;
    XCTAssertEqual(borderStyle, expectedBorderStyle);
}

- (void)testInputFieldFont {
    UIFont *font = self.calculatorViewController.inputField.font;
    UIFont *expectedFont = [UIFont fontWithName:@"HelveticaNeue-Light" size:48];
    XCTAssertEqualObjects(font, expectedFont);
}

- (void)testInputFieldHeight {
    CGFloat height = CGRectGetHeight(self.calculatorViewController.inputField.frame);
    CGFloat expectedHeight = [self.calculatorViewController.inputField intrinsicContentSize].height;
    XCTAssertEqual(height, expectedHeight);
}

- (void)testInputFieldKeyboardType {
    UIKeyboardType keyboardType = self.calculatorViewController.inputField.keyboardType;
    UIKeyboardType expectedKeyboardType = UIKeyboardTypeDecimalPad;
    XCTAssertEqual(keyboardType, expectedKeyboardType);
}

- (void)testInputFieldTextAlingment {
    NSTextAlignment textAlignment = self.calculatorViewController.inputField.textAlignment;
    NSTextAlignment expectedTextAlignment = NSTextAlignmentRight;
    XCTAssertEqual(textAlignment, expectedTextAlignment);
}

- (void)testInputFieldIsFirstResponder {
    XCTAssert([self.calculatorViewController.inputField isFirstResponder]);
}

- (void)testInputFieldAttributedPlaceholder {
    UIFont *expectedFont = [UIFont fontWithName:@"HelveticaNeue-Light" size:48];
    UIColor *expectedColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    NSDictionary *expectedAttributes = @{NSFontAttributeName: expectedFont, NSForegroundColorAttributeName: expectedColor};
    NSAttributedString *attributedPlaceholder = self.calculatorViewController.inputField.attributedPlaceholder;
    NSAttributedString *expectedAttributedPlaceholder = [[NSAttributedString alloc] initWithString:@"0" attributes:expectedAttributes];
    XCTAssertEqualObjects(attributedPlaceholder, expectedAttributedPlaceholder);
}

- (void)testInputFieldInputAccessoryView {
    UIView *inputAccessoryView = self.calculatorViewController.inputField.inputAccessoryView;
    UIToolbar *expectedAccessoryView = self.calculatorViewController.toolbar;
    XCTAssertEqualObjects(inputAccessoryView, expectedAccessoryView);
}

- (void)testInputFieldContentInsets {
    UIEdgeInsets contentInsets = self.calculatorViewController.inputField.contentInsets;
    UIEdgeInsets expectedContentInsets = UIEdgeInsetsMake(20, 15, 0, 15);
    XCTAssert(UIEdgeInsetsEqualToEdgeInsets(contentInsets, expectedContentInsets));
}

- (void)testInputFieldTextColor {
    UIColor *textColor = self.calculatorViewController.inputField.textColor;
    UIColor *expectedTextColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    XCTAssertEqualObjects(textColor, expectedTextColor);
}

- (void)testInputFieldBackgroundColor {
    UIColor *backgroundColor = self.calculatorViewController.inputField.backgroundColor;
    UIColor *expectedBackgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    XCTAssertEqualObjects(backgroundColor, expectedBackgroundColor);
}

- (void)testInputFieldDelegate {
    id<UITextFieldDelegate> delegate = self.calculatorViewController.inputField.delegate;
    id<UITextFieldDelegate> expectedDelegate = self.calculatorViewController;
    XCTAssertEqualObjects(delegate, expectedDelegate);
}

- (void)testInputFieldInitialZero {
    BOOL shouldChange = [self.calculatorViewController textField:self.calculatorViewController.inputField shouldChangeCharactersInRange:NSMakeRange(0, 0) replacementString:@"0"];
    XCTAssertFalse(shouldChange);
}

- (void)testInputFieldInitialOne {
    BOOL shouldChange = [self.calculatorViewController textField:self.calculatorViewController.inputField shouldChangeCharactersInRange:NSMakeRange(0, 0) replacementString:@"1"];
    XCTAssert(shouldChange);
}

- (void)testInputFieldRegularZero {
    self.calculatorViewController.inputField.text = @"1";
    BOOL shouldChange = [self.calculatorViewController textField:self.calculatorViewController.inputField shouldChangeCharactersInRange:NSMakeRange(0, 0) replacementString:@"0"];
    XCTAssert(shouldChange);
}

- (void)testInputFieldEmptyNumber {
    [self.calculatorViewController addButtonPressed];
    double total = self.calculatorViewController.calculator.total;
    double expectedTotal = 0;
    XCTAssertEqual(total, expectedTotal);
}

@end
