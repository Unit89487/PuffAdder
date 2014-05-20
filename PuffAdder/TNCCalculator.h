//
//  TNCCalculator.h
//  PuffAdder
//
//  Created by Jay Abdallah on 5/20/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

@import Foundation;

@interface TNCCalculator : NSObject

@property (nonatomic, readonly) double total;
@property (nonatomic, readonly) double average;
@property (nonatomic, readonly) double count;

- (void)updateWithNumber:(double)number;

@end
