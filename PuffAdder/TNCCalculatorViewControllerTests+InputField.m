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
    XCTAssertEqualObjects([self.calculatorViewController.inputField class],
                          [UITextField class]);
}

- (void)testInputFieldBorderStyle {
    XCTAssertEqual(self.calculatorViewController.inputField.borderStyle,
                   UITextBorderStyleNone);
}

- (void)testInputFieldFont {
    XCTAssertEqualObjects(self.calculatorViewController.inputField.font,
                          [UIFont fontWithName:@"HelveticaNeue-Thin" size:72]);
}

- (void)testInputFieldHeight {
    CGFloat expectedHeight = 0;
    expectedHeight += [self.calculatorViewController.inputField intrinsicContentSize].height;
    expectedHeight += CGRectGetHeight([UIApplication sharedApplication].statusBarFrame);
    XCTAssertEqual(CGRectGetHeight(self.calculatorViewController.inputField.frame), expectedHeight);
}

- (void)testInputFieldKeyboardType {
    XCTAssertEqual(self.calculatorViewController.inputField.keyboardType, UIKeyboardTypeDecimalPad);
}

- (void)testInputFieldContentVerticalAlignment {
    XCTAssertEqual(self.calculatorViewController.inputField.contentVerticalAlignment,
                   UIControlContentVerticalAlignmentBottom);
}

- (void)testInputFieldTextAlingment {
    XCTAssertEqual(self.calculatorViewController.inputField.textAlignment, NSTextAlignmentRight);
}

// TODO: Text Field should become first responder when viewDidAppear 

@end
