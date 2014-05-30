//
//  TNCCalculatorViewControllerTests+AverageCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCPaddedTextField.h"
#import "TNCCalculator.h"

@implementation TNCCalculatorViewControllerTests (AverageCell)

- (void)testAverageCell {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    UITableViewCell *cell = self.calculatorViewController.averageCell;
    UITableViewCell *expectedCell = [self.calculatorViewController tableView:self.calculatorViewController.tableView cellForRowAtIndexPath:indexPath];
    XCTAssertEqualObjects(cell, expectedCell);
}

- (void)testAverageCellText {
    NSString *text = self.calculatorViewController.averageCell.textLabel.text;
    NSString *expectedText = NSLocalizedString(@"Average", nil);
    XCTAssertEqualObjects(text, expectedText);
}

- (void)testAverageCellDetailText {
    NSString *detailText = self.calculatorViewController.averageCell.detailTextLabel.text;
    NSString *expectedDetailText = @"0";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

- (void)testAverageCellDetailTextUpdate {
    [self.calculatorViewController.calculator updateWithNumber:1];
    self.calculatorViewController.inputField.text = @"2";
    [self.calculatorViewController addButtonPressed];
    NSString *detailText = self.calculatorViewController.averageCell.detailTextLabel.text;
    NSString *expectedDetailText = @"1.5";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

- (void)testAverageCellDetailTextReset {
    self.calculatorViewController.averageCell.detailTextLabel.text = @"1";
    [self.calculatorViewController resetButtonPressed];
    NSString *detailText = self.calculatorViewController.averageCell.detailTextLabel.text;
    NSString *expectedDetailText = @"0";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

@end
