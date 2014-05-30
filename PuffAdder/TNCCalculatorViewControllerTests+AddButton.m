//
//  TNCCalculatorViewControllerTests+AddButton.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/22/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCPaddedTextField.h"
#import "TNCCalculator.h"

@implementation TNCCalculatorViewControllerTests (AddButton)

- (void)testAddButtonClass {
    Class class = [self.calculatorViewController.addButton class];
    Class expectedClass = [UIBarButtonItem class];
    XCTAssertEqualObjects(class, expectedClass);
}

- (void)testAddButtonTitle {
    NSString *title = self.calculatorViewController.addButton.title;
    NSString *expectedTitle = NSLocalizedString(@"Add", nil);
    XCTAssertEqualObjects(title, expectedTitle);
}

- (void)testAddButtonStyle {
    UIBarButtonItemStyle style = self.calculatorViewController.addButton.style;
    UIBarButtonItemStyle expectedStyle = UIBarButtonItemStyleDone;
    XCTAssertEqual(style, expectedStyle);
}

- (void)testAddButtonTarget {
    id target = self.calculatorViewController.addButton.target;
    id expectedTarget = self.calculatorViewController;
    XCTAssertEqualObjects(target, expectedTarget);
}

- (void)testAddButtonAction {
    SEL action = self.calculatorViewController.addButton.action;
    SEL expectedAction = @selector(addButtonPressed);
    XCTAssertEqual(action, expectedAction);
}

- (void)testAddButtonUpdatesTotal {
    self.calculatorViewController.inputField.text = @"1.5";
    [self.calculatorViewController addButtonPressed];
    double total = self.calculatorViewController.calculator.total;
    double expectedTotal = 1.5;
    XCTAssertEqual(total, expectedTotal);
}

- (void)testAddButtonClearsText {
    self.calculatorViewController.inputField.text = @"1";
    [self.calculatorViewController addButtonPressed];
    NSString *text = self.calculatorViewController.inputField.text;
    NSString *expectedText = @"";
    XCTAssertEqualObjects(text, expectedText);
}

@end
