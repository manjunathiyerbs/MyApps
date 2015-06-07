//
//  MasterViewController.h
//  MyRewardCards
//
//  Created by Manjunath  on 4/19/15.
//  Copyright (c) 2015 Manjunath . All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;


- (void)saveCards;

@end

