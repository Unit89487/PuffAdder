//
//  TNCCalculatorViewControllerTests+TotalCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCCalculator.h"
#import "TNCPaddedTextField.h"

@implementation TNCCalculatorViewControllerTests (TotalCell)

- (void)testTotalCell {
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    UITableViewCell *totalCell = self.calculatorViewController.totalCell;
    UITableViewCell *expectedTotalCell = [self.calculatorViewController tableView:self.calculatorViewController.tableView cellForRowAtIndexPath:indexPath];
    XCTAssertEqualObjects(totalCell, expectedTotalCell);
}

- (void)testTotalCellText {
    NSString *text = self.calculatorViewController.totalCell.textLabel.text;
    NSString *expectedText = NSLocalizedString(@"Total", nil);
    XCTAssertEqualObjects(text, expectedText);
}

- (void)testTotalCellDetailText {
    NSString *detailText = self.calculatorViewController.totalCell.detailTextLabel.text;
    NSString *expectedDetailText = @"0";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

- (void)testTotalCellDetailTextUpdate {
    [self.calculatorViewController.calculator updateWithNumber:1];
    self.calculatorViewController.inputField.text = @"0.5";
    [self.calculatorViewController addButtonPressed];
    NSString *detailText = self.calculatorViewController.totalCell.detailTextLabel.text;
    NSString *expectedDetailText = @"1.5";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

- (void)testTotalCellDetailTextReset {
    self.calculatorViewController.totalCell.detailTextLabel.text = @"1";
    [self.calculatorViewController resetButtonPressed];
    NSString *detailText = self.calculatorViewController.totalCell.detailTextLabel.text;
    NSString *expectedDetailText = @"0";
    XCTAssertEqualObjects(detailText, expectedDetailText);
}

@end
