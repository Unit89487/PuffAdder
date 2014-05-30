//
//  TNCCalculatorViewControllerTests+Calculator.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/28/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"
#import "TNCCalculator.h"

@implementation TNCCalculatorViewControllerTests (Calculator)

- (void)testCalculatorClass {
    Class class = [self.calculatorViewController.calculator class];
    Class expectedClass = [TNCCalculator class];
    XCTAssertEqualObjects(class, expectedClass);
}

@end
