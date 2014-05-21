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
    XCTAssertEqual(CGRectGetHeight(self.calculatorViewController.inputField.frame),
                   [self.calculatorViewController.inputField intrinsicContentSize].height);
}

- (void)testInputFieldKeyboardType {
    XCTAssertEqual(self.calculatorViewController.inputField.keyboardType, UIKeyboardTypeDecimalPad);
}

//- (void)testInputField


/*
 
 viewController.view
 
 
 tableViewController.view = tableViewController.tableView
 
 
 
 
 
 */

@end
