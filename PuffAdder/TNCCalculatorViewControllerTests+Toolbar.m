//
//  TNCCalculatorViewControllerTests+Toolbar.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/22/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (Toolbar)

- (void)testToolbarClass {
    XCTAssertEqualObjects([self.calculatorViewController.toolbar class],
                          [UIToolbar class]);
}

- (void)testToolbarItems {
    XCTAssertEqualObjects(self.calculatorViewController.toolbar.items,
                          @[self.calculatorViewController.addButton]);
}

@end
