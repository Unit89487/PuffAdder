//
//  TNCCalculatorViewControllerTests+AddButton.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/22/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests (AddButton)

- (void)testAddButtonClass {
    Class class = [self.calculatorViewController.addButton class];
    Class expectedClass = [UIBarButtonItem class];
    XCTAssertEqualObjects(class, expectedClass);
}

@end
