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
    Class class = [self.calculatorViewController.toolbar class];
    Class expectedClass = [UIToolbar class];
    XCTAssertEqualObjects(class, expectedClass);
}

- (void)testToolbarItems {
    {
        UIBarButtonItem *leftItem = [self.calculatorViewController.toolbar.items firstObject];
        UIBarButtonItem *expectedLeftItem = self.calculatorViewController.resetButton;
        XCTAssertEqualObjects(leftItem, expectedLeftItem);
    }
    {
        UIBarButtonItem *rightItem = [self.calculatorViewController.toolbar.items lastObject];
        UIBarButtonItem *expectedRightItem = self.calculatorViewController.addButton;
        XCTAssertEqualObjects(rightItem, expectedRightItem);
    }
}

@end
