//
//  TNCCalculatorViewController.m
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

#import "TNCCalculatorViewController.h"

NSString * const TNCCalcuatorViewControllerStoryboardName = @"Main";
NSString * const TNCCalcuatorViewControllerStoryboardIdentifier = @"CalculatorViewController";

@interface TNCCalculatorViewController ()

@property (nonatomic, readwrite) IBOutlet UITextField *inputField;
@property (nonatomic, readwrite) IBOutlet UITableViewCell *totalCell;
@property (nonatomic, readwrite) IBOutlet UITableViewCell *averageCell;
@property (nonatomic, readwrite) IBOutlet UITableViewCell *countCell;
@property (nonatomic, readwrite) IBOutlet UIToolbar *toolbar; 
@property (nonatomic, readwrite) IBOutlet UIBarButtonItem *addButton;

@end

@implementation TNCCalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.inputField.inputAccessoryView = self.toolbar;
    self.toolbar.items = @[self.addButton];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.inputField becomeFirstResponder];
}



@end
