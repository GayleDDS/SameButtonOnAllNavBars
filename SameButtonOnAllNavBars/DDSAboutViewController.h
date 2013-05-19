//
//  DDSAboutViewController.h
//  SameButtonOnAllNavBars
//
//  Created by Gayle Dunham on 5/18/13.
//  Copyright (c) 2013 Gayle Dunham. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDSAboutViewController : UIViewController

+ (UIBarButtonItem *) aboutBarButtionItemForTarget:(id) target andAction:(SEL) action;
+ (void)presentAboutViewController:(UIViewController *)viewController;

@end
