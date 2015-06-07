//
//  DetailViewController.h
//  MyRewardCards
//
//  Created by Manjunath  on 4/19/15.
//  Copyright (c) 2015 Manjunath . All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyCard,MasterViewController;

@interface DetailViewController : UIViewController<UINavigationControllerDelegate,UIImagePickerControllerDelegate>

@property (strong, nonatomic) MyCard* detailItem;
@property (weak, nonatomic) MasterViewController *tableViewController;

@property (readwrite, weak) IBOutlet UITextField *nameField;
@property (readwrite, weak) IBOutlet UITextField *numberField;
@property (readwrite, weak) IBOutlet UITextView *notesField;
@property (readwrite, weak) IBOutlet UIImageView *imageView;
@property (readwrite, weak) IBOutlet UIButton *addBarCodeImageButton;


- (IBAction)save:(id)sender;

- (IBAction)edit:(id)sender;


- (IBAction)addBarCodeImage:(id)sender;


@end

