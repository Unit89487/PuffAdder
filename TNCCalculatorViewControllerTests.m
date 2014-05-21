//
//  TNCCalculatorViewControllerTests.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewControllerTests.h"

@implementation TNCCalculatorViewControllerTests

- (void)setUp {
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:TNCCalcuatorViewControllerStoryboardName
                                                         bundle:nil];
    self.calculatorViewController = [storyboard instantiateViewControllerWithIdentifier:TNCCalcuatorViewControllerStoryboardIdentifier];
    (void)self.calculatorViewController.view;
}

- (void)testSuperclass {
    XCTAssertEqualObjects([self.calculatorViewController superclass],
                          [UITableViewController class]);
}

@end
