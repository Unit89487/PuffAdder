//
//  TNCCalculatorTests.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/20/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculator.h"

@import XCTest;

@interface TNCCalculatorTests : XCTestCase

@property (nonatomic) TNCCalculator *calculator;

@end

@implementation TNCCalculatorTests

- (void)setUp {
    [super setUp];
    self.calculator = [TNCCalculator new];
    [self.calculator updateWithNumber:1];
}

- (void)testSuperclass {
    XCTAssertEqualObjects([self.calculator superclass], [NSObject class]);
}

- (void)testInitialTotal {
    XCTAssertEqual(self.calculator.total, 1);
}

- (void)testInitialAverage {
    
    XCTAssertEqual(self.calculator.average, 1);
}

- (void)testInitialCount {
    XCTAssertEqual(self.calculator.count, 1);
}

- (void)testUpdatedTotal {
    [self.calculator updateWithNumber:1];
    XCTAssertEqual(self.calculator.total, 2);
}

- (void)testUpdatedAverage {
    [self.calculator updateWithNumber:2];
    XCTAssertEqual(self.calculator.average, 1.5);
}

- (void)testUpdatedCount {
    [self.calculator updateWithNumber:0];
    XCTAssertEqual(self.calculator.count, 2);
}

@end
