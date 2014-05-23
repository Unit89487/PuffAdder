//
//  TNCCalculatorViewControllerTests+TotalCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

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

@end
