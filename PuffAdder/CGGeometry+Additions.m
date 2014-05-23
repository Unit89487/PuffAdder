//
//  CGGemetry+Additions.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/23/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "CGGeometry+Addtions.h"

CGRect CGRectSynthesize(CGPoint origin, CGSize size) {
    return (CGRect){ .origin = origin, .size = size };
}
