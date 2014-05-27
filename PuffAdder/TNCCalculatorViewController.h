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

@class TNCPaddedTextField;

@interface TNCCalculatorViewController : UITableViewController

@property (nonatomic) IBOutlet TNCPaddedTextField *inputField;
@property (nonatomic) IBOutlet UITableViewCell *totalCell;
@property (nonatomic) IBOutlet UITableViewCell *averageCell;
@property (nonatomic) IBOutlet UITableViewCell *countCell;
@property (nonatomic) IBOutlet UIToolbar *toolbar;
@property (nonatomic) IBOutlet UIBarButtonItem *addButton;

@end
