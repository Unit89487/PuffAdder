//
//  CGGeometryTests.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/23/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "CGGeometry+Addtions.h"

@import XCTest;

@interface CGGeometryTests : XCTestCase

@end

@implementation CGGeometryTests

- (void)testRectSynthesize {
    CGRect rect = CGRectSynthesize(CGPointMake(1, 2), CGSizeMake(3, 4));
    CGRect expectedRect = CGRectMake(1, 2, 3, 4);
    XCTAssert(CGRectEqualToRect(rect, expectedRect));
}

@end
