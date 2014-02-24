//
//  solutionViewController.h
//  SEP_A2
//
//  Created by Jordan S. on 2/23/2014.
//  Copyright (c) 2014 Jordan S. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface solutionViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *type;
@property (weak, nonatomic) NSString *typeOf;
@property (weak, nonatomic) IBOutlet UINavigationItem *titile;

+ (void)setTypeOf:(NSString *)typeOf;
@end
