//
//  TNCPaddedTextField.m
//  LocalChat
//
//  Created by Jay Abdallah on 2/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCPaddedTextField.h"
#import "CGGeometry+Addtions.h"

@implementation TNCPaddedTextField

- (CGRect)textRectForBounds:(CGRect)bounds {
    CGPoint origin = [self textRectOriginForBounds:bounds];
    CGSize size = [self textRectSizeForBounds:bounds];
    return CGRectSynthesize(origin, size);
}

- (CGPoint)textRectOriginForBounds:(CGRect)bounds {
    CGFloat x = CGRectGetMinX(bounds) + self.contentInsets.left;
    CGFloat y = CGRectGetMinY(bounds) + self.contentInsets.top;
    return CGPointMake(x, y);
}

- (CGSize)textRectSizeForBounds:(CGRect)bounds {
    CGFloat width = CGRectGetWidth(bounds) - self.contentInsets.left - self.contentInsets.right;
    CGFloat height = CGRectGetHeight(bounds) - self.contentInsets.top - self.contentInsets.bottom;
    return CGSizeMake(width, height);
}

@end
