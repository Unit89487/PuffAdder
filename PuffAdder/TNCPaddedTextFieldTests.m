//
//  TNCPaddedTextFieldTests.m
//  LocalChat
//
//  Created by Jay Abdallah on 2/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCPaddedTextField.h"

@import XCTest;

@interface TNCPaddedTextFieldTests : XCTestCase

@property (nonatomic) TNCPaddedTextField *paddedTextField;

@end

@implementation TNCPaddedTextFieldTests

- (void)setUp {
    [super setUp];
    self.paddedTextField = [TNCPaddedTextField new];
}

- (void)testSuperclass {
    Class superclass = [self.paddedTextField superclass];
    Class expectedSuperclass = [UITextField class];
    XCTAssertEqualObjects(superclass, expectedSuperclass);
}

- (void)testTextRect {
    self.paddedTextField.contentInsets = UIEdgeInsetsMake(1, 2, 3, 4);
    CGRect bounds = CGRectMake(0, 0, 10, 20);
    CGRect textRect = [self.paddedTextField textRectForBounds:bounds];
    CGRect expectedTextRect = CGRectMake(2, 1, 4, 16);
    XCTAssert(CGRectEqualToRect(textRect, expectedTextRect));
}

- (void)testEditingRect {
    self.paddedTextField.contentInsets = UIEdgeInsetsMake(1, 2, 3, 4);
    CGRect bounds = CGRectMake(0, 0, 10, 20);
    CGRect editingRect = [self.paddedTextField editingRectForBounds:bounds];
    CGRect expectedEditingRect = [self.paddedTextField textRectForBounds:bounds];
    XCTAssert(CGRectEqualToRect(editingRect, expectedEditingRect));
}

- (void)testIntrinsicContentSize {
    self.paddedTextField.contentInsets = UIEdgeInsetsMake(1, 2, 3, 4);
    CGSize instrinsicContentSize = [self.paddedTextField intrinsicContentSize];
    CGSize expectedIntrinsicContentSize = CGSizeMake(2 + 15 + 4, 1 + 25 + 3);
    XCTAssert(CGSizeEqualToSize(instrinsicContentSize, expectedIntrinsicContentSize));
}

@end
