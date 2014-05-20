//
//  TNCCalculator.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/20/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculator.h"

@interface TNCCalculator ()

@property (nonatomic, readwrite) double total;
@property (nonatomic, readwrite) double average;
@property (nonatomic, readwrite) double count;

@end

@implementation TNCCalculator

- (void)updateWithNumber:(double)number {
    [self updateTotalWithNumber:number];
    [self updateCount];
    [self updateAverageWithNumber:number];
}

- (void)updateTotalWithNumber:(double)number {
    self.total += number;
}

- (void)updateAverageWithNumber:(double)number {
    self.average = self.total / self.count;
}

- (void)updateCount {
    self.count++;
}

@end
