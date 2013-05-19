//
//  DDSBaseViewController.m
//  SameButtonOnAllNavBars
//
//  Created by Gayle Dunham on 5/18/13.
//  Copyright (c) 2013 Gayle Dunham. All rights reserved.
//

#import "DDSBaseViewController.h"
#import "DDSAboutViewController.h"

@interface DDSBaseViewController ()

@end

@implementation DDSBaseViewController

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

    if (self.navigationItem) {
        self.navigationItem.rightBarButtonItem = [DDSAboutViewController aboutBarButtionItemForTarget:self andAction:@selector(aboutButtonAction:)];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)aboutButtonAction:(UIBarButtonItem *)sender
{
    [DDSAboutViewController presentAboutViewController:self];
}

@end
