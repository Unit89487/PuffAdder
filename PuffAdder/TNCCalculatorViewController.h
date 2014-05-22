//
//  TNCCalculatorViewController.h
//  PuffAdder
//
//  Created by Jay Abdallah on 5/21/14.
//  Copyright (c) 2014 Tiny Computers. All rights reserved.
//

FOUNDATION_EXPORT NSString * const TNCCalcuatorViewControllerStoryboardName;
FOUNDATION_EXPORT NSString * const TNCCalcuatorViewControllerStoryboardIdentifier;

@import UIKit;

@interface TNCCalculatorViewController : UITableViewController

@property (nonatomic, readonly) UITextField *inputField;
@property (nonatomic, readonly) UITableViewCell *totalCell;
@property (nonatomic, readonly) UITableViewCell *averageCell;
@property (nonatomic, readonly) UITableViewCell *countCell;
@property (nonatomic, readonly) UIToolbar *toolbar;
@property (nonatomic, readonly) UIBarButtonItem *addButton;

@end
