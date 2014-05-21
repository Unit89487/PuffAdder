//
//  TNCCalculatorViewControllerTests+TableView.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (TableView)

- (void)testNumberOfRows {
    XCTAssertEqual([self.calculatorViewController tableView:self.calculatorViewController.tableView
                                      numberOfRowsInSection:0], 4);
}

- (void)testHeightForRow0 {
    XCTAssertEqual([self.calculatorViewController tableView:self.calculatorViewController.tableView
                                    heightForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:0]], 44 * 4);
}

@end
