//
//  solutionViewController.m
//  SEP_A2
//
//  Created by Jordan S. on 2/23/2014.
//  Copyright (c) 2014 Jordan S. All rights reserved.
//

#import "solutionViewController.h"

@interface solutionViewController ()

@end

@implementation solutionViewController
@synthesize type = _type;
@synthesize typeOf = _typeOf;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    NSLog(_typeOf);
    [_type setText:_typeOf];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

+ (void)setTypeOf:(NSString *)typeOf{
    NSLog(@"------HERE------");
    NSLog(typeOf);
    self.typeOf = typeOf;
}

@end
