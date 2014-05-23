//
//  TNCCalculatorViewControllerTests+InputField.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests+InputField.h"

@implementation TNCCalculatorViewControllerTests (InputField)

- (void)testInputFieldClass {
    Class class = [self.calculatorViewController.inputField class];
    Class expectedClass = [UITextField class];
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
    CGFloat expectedHeight = 0;
    expectedHeight += [self.calculatorViewController.inputField intrinsicContentSize].height;
    expectedHeight += CGRectGetHeight([UIApplication sharedApplication].statusBarFrame);
    XCTAssertEqual(height, expectedHeight);
}

- (void)testInputFieldKeyboardType {
    UIKeyboardType keyboardType = self.calculatorViewController.inputField.keyboardType;
    UIKeyboardType expectedKeyboardType = UIKeyboardTypeDecimalPad;
    XCTAssertEqual(keyboardType, expectedKeyboardType);
}

- (void)testInputFieldContentVerticalAlignment {
    UIControlContentVerticalAlignment contentVerticalAlignment = self.calculatorViewController.inputField.contentVerticalAlignment;
    UIControlContentVerticalAlignment expectedContentVerticalAlignment = UIControlContentVerticalAlignmentBottom;
    XCTAssertEqual(contentVerticalAlignment, expectedContentVerticalAlignment);
}

- (void)testInputFieldTextAlingment {
    NSTextAlignment textAlignment = self.calculatorViewController.inputField.textAlignment;
    NSTextAlignment expectedTextAlignment = NSTextAlignmentRight;
    XCTAssertEqual(textAlignment, expectedTextAlignment);
}

- (void)testInputFieldIsFirstResponder {
    XCTAssert([self.calculatorViewController.inputField isFirstResponder]);
}

- (void)testInputFieldPlaceholder {
    NSString *placeholder = self.calculatorViewController.inputField.placeholder;
    NSString *expectedPlaceholder = NSLocalizedString(@"0", nil);
    XCTAssertEqualObjects(placeholder, expectedPlaceholder);
}

- (void)testInputFieldInputAccessoryView {
    UIView *inputAccessoryView = self.calculatorViewController.inputField.inputAccessoryView;
    UIToolbar *expectedAccessoryView = self.calculatorViewController.toolbar;
    XCTAssertEqualObjects(inputAccessoryView, expectedAccessoryView);
}

@end
