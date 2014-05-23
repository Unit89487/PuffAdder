//
//  TNCCalculatorViewControllerTests+CountCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (CountCell)

- (void)testCountCell {
    NSIndexPath *indexPath = [NSIndexPath indexPathForItem:2 inSection:0];
    UITableViewCell *cell = self.calculatorViewController.countCell;
    UITableViewCell *expectedCell = [self.calculatorViewController tableView:self.calculatorViewController.tableView cellForRowAtIndexPath:indexPath];
    XCTAssertEqualObjects(cell, expectedCell);
}

- (void)testCountCellText {
    NSString *text = self.calculatorViewController.countCell.textLabel.text;
    NSString *expectedCell = NSLocalizedString(@"Count", nil);
    XCTAssertEqualObjects(text, expectedCell);
}

@end
