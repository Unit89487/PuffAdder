//
//  TNCCalculatorViewControllerTests+AverageCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (AverageCell)

- (void)testAverageCellIndexPath {
    XCTAssertEqualObjects(self.calculatorViewController.averageCell,
                          [self.calculatorViewController tableView:self.calculatorViewController.tableView
                                             cellForRowAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]]);
}

- (void)testAverageCellText {
    XCTAssertEqualObjects(self.calculatorViewController.averageCell.textLabel.text,
                          NSLocalizedString(@"Average", nil));
}

@end
