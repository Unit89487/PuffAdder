//
//  TNCCalculatorViewControllerTests.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewController.h"

@import XCTest;

@interface TNCCalculatorViewControllerTests : XCTestCase

@property (nonatomic) TNCCalculatorViewController *calculatorViewController;

@end

@implementation TNCCalculatorViewControllerTests

- (void)setUp {
    [super setUp];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:TNCCalcuatorViewControllerStoryboardName bundle:nil];
    self.calculatorViewController = [storyboard instantiateViewControllerWithIdentifier:TNCCalcuatorViewControllerStoryboardIdentifier];
}

- (void)testSuperclass {
    XCTAssertEqualObjects([self.calculatorViewController superclass], [UITableViewController class]);
}

@end
