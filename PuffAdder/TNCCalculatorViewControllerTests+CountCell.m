//
//  TNCCalculatorViewControllerTests+CountCell.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (CountCell)

- (void)testCountCellIndexPath {
    XCTAssertEqualObjects(self.calculatorViewController.countCell,
                          [self.calculatorViewController tableView:self.calculatorViewController.tableView
                                             cellForRowAtIndexPath:[NSIndexPath indexPathForRow:2 inSection:0]]);
}

- (void)testCountCellText {
    XCTAssertEqualObjects(self.calculatorViewController.countCell.textLabel.text,
                          NSLocalizedString(@"Count", nil));
}

@end
