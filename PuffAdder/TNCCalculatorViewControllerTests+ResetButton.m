//
//  TNCCalculatorViewControllerTests+ClearButton.m
//  PuffReseter
//
//  Created by Jay Abdallah on 5/28/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCCalculator.h"
#import "TNCPaddedTextField.h"

@implementation TNCCalculatorViewControllerTests (ResetButton)

- (void)testResetButtonClass {
    Class class = [self.calculatorViewController.resetButton class];
    Class expectedClass = [UIBarButtonItem class];
    XCTAssertEqualObjects(class, expectedClass);
}

- (void)testResetButtonTitle {
    NSString *title = self.calculatorViewController.resetButton.title;
    NSString *expectedTitle = NSLocalizedString(@"Reset", nil);
    XCTAssertEqualObjects(title, expectedTitle);
}

- (void)testResetButtonTarget {
    id target = self.calculatorViewController.resetButton.target;
    id expectedTarget = self.calculatorViewController;
    XCTAssertEqualObjects(target, expectedTarget);
}

- (void)testResetButtonAction {
    SEL action = self.calculatorViewController.resetButton.action;
    SEL expectedAction = @selector(resetButtonPressed);
    XCTAssertEqual(action, expectedAction);
}

- (void)testResetButtonReinstantiatesCalculator {
    TNCCalculator *calculator = self.calculatorViewController.calculator;
    [self.calculatorViewController resetButtonPressed];
    TNCCalculator *newCalculator = self.calculatorViewController.calculator;
    XCTAssertNotEqualObjects(calculator, newCalculator);
}

- (void)testResetButtonClearsText {
    self.calculatorViewController.inputField.text = @"1";
    [self.calculatorViewController resetButtonPressed];
    NSString *text = self.calculatorViewController.inputField.text;
    NSString *expectedText = @"";
    XCTAssertEqualObjects(text, expectedText);
}

@end
