//
//  TNCCalculatorViewControllerTests+AverageCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

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

@end
