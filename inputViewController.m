//
//  inputViewController.m
//  SEP_A2
//
//  Created by Jordan S. on 2/23/2014.
//  Copyright (c) 2014 Jordan S. All rights reserved.
//

#import "inputViewController.h"
#import "solutionViewController.h"

@interface inputViewController ()



@end

@implementation inputViewController

int valA;
int valB;
int valC;

@synthesize valueA = _valueA;


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
    [_valueA becomeFirstResponder];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onSubmit:(id)sender {
    if([_valueA.text  isEqual: @""] || [_valueB.text  isEqual: @""] || [_valueB.text  isEqual: @""]){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"You must select a value for each variable"
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    else{
        valA = [[_valueA text] intValue];
        valB = [[_valueB text] intValue];
        valC = [[_valueC text] intValue];
        if (valA < 1 || valB < 1 || valC < 1){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"You must select values between 1 and 100 inclusive"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if(valA > 100 || valB > 100 || valC > 100){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"You must select values between 1 and 100 inclusive"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else if(valA > valB + valC || valB > valA + valC || valC > valA + valB){
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                            message:@"The input values do not form a triangle"
                                                           delegate:nil
                                                  cancelButtonTitle:@"OK"
                                                  otherButtonTitles:nil];
            [alert show];
        }
        else{
            [self performSegueWithIdentifier:@"submit" sender:self];
        }
    }
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"submit"]){
        if(valA == valB && valA == valC && valB == valC){
            [segue.destinationViewController setTypeOf:@"Equilateral"];
        }
        else if(valA == valB || valA == valC || valB == valC){
            [segue.destinationViewController setTypeOf:@"Isosceles"];
        }
        else{
            [segue.destinationViewController setTypeOf:@"Scalene"];
        }
    }
}
@end
