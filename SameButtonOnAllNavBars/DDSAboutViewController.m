//
//  DDSAboutViewController.m
//  SameButtonOnAllNavBars
//
//  Created by Gayle Dunham on 5/18/13.
//  Copyright (c) 2013 Gayle Dunham. All rights reserved.
//

#import "DDSAboutViewController.h"

@interface DDSAboutViewController ()

- (IBAction)doneAction:(UIBarButtonItem *)sender;

@end

@implementation DDSAboutViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(UIBarButtonItem *)sender
{
    [[self presentingViewController] dismissViewControllerAnimated:YES completion:nil];
}

+ (UIBarButtonItem *) aboutBarButtionItemForTarget:(id) target andAction:(SEL) action
{
    UIBarButtonItem *aboutButton = [[UIBarButtonItem alloc] initWithTitle:@"About"
                                                                    style:UIBarButtonItemStyleBordered
                                                                   target:target
                                                                   action:action];

    return aboutButton;
}

+ (void)presentAboutViewController:(UIViewController *)viewController
{
    UIViewController *aboutController = [viewController.storyboard instantiateViewControllerWithIdentifier:@"AboutNavigationController"];
    [viewController presentViewController:aboutController animated:YES completion:nil];
}


@end
