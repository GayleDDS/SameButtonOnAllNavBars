//
//  DDSBaseTableViewController.m
//  SameButtonOnAllNavBars
//
//  Created by Gayle Dunham on 5/18/13.
//  Copyright (c) 2013 Gayle Dunham. All rights reserved.
//

#import "DDSBaseTableViewController.h"
#import "DDSAboutViewController.h"

@interface DDSBaseTableViewController ()

@end

@implementation DDSBaseTableViewController

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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark - Action Methods

- (void)aboutButtonAction:(UIBarButtonItem *)sender
{
    [DDSAboutViewController presentAboutViewController:self];
}


@end
