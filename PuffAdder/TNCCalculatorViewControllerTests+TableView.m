//
//  TNCCalculatorViewControllerTests+TableView.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCPaddedTextField.h"

@implementation TNCCalculatorViewControllerTests (TableView)

- (void)testNumberOfRows {
    NSInteger numberOfRows = [self.calculatorViewController tableView:self.calculatorViewController.tableView numberOfRowsInSection:0];
    NSInteger expectedNumberOfRows = 3;
    XCTAssertEqual(numberOfRows, expectedNumberOfRows);
}

- (void)testTableHeaderView {
    UIView *headerView = self.calculatorViewController.tableView.tableHeaderView;
    UIView *expectedHeaderView = self.calculatorViewController.inputField;
    XCTAssertEqualObjects(headerView, expectedHeaderView);
}

@end
