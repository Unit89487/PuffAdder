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
    NSArray *items = self.calculatorViewController.toolbar.items;
    NSArray *expectedItems = @[self.calculatorViewController.addButton];
    XCTAssertEqualObjects(items, expectedItems);
}

@end
