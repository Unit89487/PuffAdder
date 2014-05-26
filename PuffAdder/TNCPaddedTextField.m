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

#pragma mark Text Rect

- (CGRect)textRectForBounds:(CGRect)bounds {
    CGPoint origin = [self textRectOriginForBounds:bounds];
    CGSize size = [self textRectSizeForBounds:bounds];
    return CGRectSynthesize(origin, size);
}

- (CGRect)editingRectForBounds:(CGRect)bounds {
    return [self textRectForBounds:bounds];
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

#pragma mark Intrinsic Content Size

- (CGSize)intrinsicContentSize {
    CGSize intrinsicContentSize = [super intrinsicContentSize];
    return [self paddedSize:intrinsicContentSize];
}

- (CGSize)paddedSize:(CGSize)size {
    CGFloat paddedWidth = [self paddedWidth:size.width];
    CGFloat paddedHeight = [self paddedHeight:size.height];
    return CGSizeMake(paddedWidth, paddedHeight);
}

- (CGFloat)paddedWidth:(CGFloat)width {
    return self.contentInsets.left + width + self.contentInsets.right;
}

- (CGFloat)paddedHeight:(CGFloat)height {
    return self.contentInsets.top + height + self.contentInsets.bottom;
}

@end
