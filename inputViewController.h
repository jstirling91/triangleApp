//
//  inputViewController.h
//  SEP_A2
//
//  Created by Jordan S. on 2/23/2014.
//  Copyright (c) 2014 Jordan S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface inputViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *valueA;
@property (weak, nonatomic) IBOutlet UITextField *valueB;
@property (weak, nonatomic) IBOutlet UITextField *valueC;
- (IBAction)onSubmit:(id)sender;

@end
