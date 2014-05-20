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
}

- (void)testSuperclass {
    XCTAssertEqualObjects([self.calculator superclass], [NSObject class]);
}

@end
