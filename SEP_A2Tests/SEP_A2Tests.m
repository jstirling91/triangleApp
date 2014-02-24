//
//  SEP_A2Tests.m
//  SEP_A2Tests
//
//  Created by Jordan S. on 2/23/2014.
//  Copyright (c) 2014 Jordan S. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "inputViewController.h"
#import "solutionViewController.h"

@interface SEP_A2Tests : XCTestCase

@end

@implementation SEP_A2Tests

//inputViewController *inputV;
UINavigationController *nav;

+ (void)setNav:(UINavigationController *)navSet
{
    nav = navSet;
}

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
//    nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
//    [inputV.navigationController pushViewController: inputV animated:YES];
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
//    [inputV.navigationController popViewControllerAnimated:YES];
    [super tearDown];
}

- (void)test1
{
//    inputViewController *inputV = [[inputViewController alloc] init];
//    [inputV onSubmit:NULL];
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@""];
    inputV.valueB.text = @"";
    [inputV.valueC setText:@""];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
//    Check that Alert message is correct
    NSString *temp = [inputV.alert message];
    XCTAssertEqualObjects(temp, @"You must select a value for each variable", @"test1");
}

- (void)test2
{
//    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
//    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
//    Set values for a, b, c
    [[inputV valueA] setText:@"22"];
    inputV.valueB.text = @"32";
    [inputV.valueC setText:@"11"];
    
//    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
//    Load solutionViewController from navController to see if it is being viewed
    solutionViewController *sol = nav.visibleViewController;
    NSString *temp = sol.titile.title;
    XCTAssertEqualObjects(temp, @"Solution", @"test2");
    
}

- (void)test3
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"0"];
    inputV.valueB.text = @"0";
    [inputV.valueC setText:@"0"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    XCTAssertEqualObjects([inputV.alert message], @"You must select values between 1 and 100 inclusive", @"test1");
}

- (void)test4
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"101"];
    inputV.valueB.text = @"101";
    [inputV.valueC setText:@"101"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    XCTAssertEqualObjects([inputV.alert message], @"You must select values between 1 and 100 inclusive", @"test3");
}

- (void)test5
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"60"];
    inputV.valueB.text = @"60";
    [inputV.valueC setText:@"60"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    //    Load solutionViewController from navController to see if it is being viewed
    solutionViewController *sol = nav.visibleViewController;
    NSString *temp = sol.typeOf;
    XCTAssertEqualObjects(temp, @"Equilateral", @"test5");
    
}

- (void)test6
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"50"];
    inputV.valueB.text = @"50";
    [inputV.valueC setText:@"60"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    //    Load solutionViewController from navController to see if it is being viewed
    solutionViewController *sol = nav.visibleViewController;
    NSString *temp = sol.typeOf;
    XCTAssertEqualObjects(temp, @"Isosceles", @"test6");
    
}

- (void)test7
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"10"];
    inputV.valueB.text = @"15";
    [inputV.valueC setText:@"20"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    //    Load solutionViewController from navController to see if it is being viewed
    solutionViewController *sol = nav.visibleViewController;
    NSString *temp = sol.typeOf;
    XCTAssertEqualObjects(temp, @"Scalene", @"test7");
    
}

- (void)test8
{
    //    Load storyboard to get viewControllers by ID
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    UINavigationController *nav = [storyboard instantiateViewControllerWithIdentifier:@"nav"];
    inputViewController *inputV = [storyboard instantiateViewControllerWithIdentifier:@"input"];
    
    //    Push the inputViewController to navController and load inputViewControler
    [nav pushViewController:inputV animated:YES];
    [inputV loadView];
    
    //    Set values for a, b, c
    [[inputV valueA] setText:@"5"];
    inputV.valueB.text = @"10";
    [inputV.valueC setText:@"20"];
    
    //    Load UIButton from inputViewController and pass as sender to onSubmit
    UIButton *submit = [[UIButton alloc] init];
    submit = inputV.submit;
    [inputV onSubmit:submit];
    
    XCTAssertEqualObjects([inputV.alert message], @"The input values do not form a triangle", @"test8");
}


@end
