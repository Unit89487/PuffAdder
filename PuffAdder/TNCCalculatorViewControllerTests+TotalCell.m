//
//  TNCCalculatorViewControllerTests+TotalCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (TotalCell)

- (void)testTotalCellIndexPath {
    XCTAssertEqualObjects(self.calculatorViewController.totalCell,
                          [self.calculatorViewController tableView:self.calculatorViewController.tableView
                                             cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]]);
}

- (void)testTotalCellText {
    XCTAssertEqualObjects(self.calculatorViewController.totalCell.textLabel.text,
                          NSLocalizedString(@"Total", nil));
}

@end
