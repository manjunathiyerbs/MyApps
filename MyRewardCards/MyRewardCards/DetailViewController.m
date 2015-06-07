//
//  DetailViewController.m
//  MyRewardCards
//
//  Created by Manjunath  on 4/19/15.
//  Copyright (c) 2015 Manjunath . All rights reserved.
//

#import "DetailViewController.h"
#import "MyCard.h"
#import "MasterViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
            
        // Update the view.
        [self configureView];
    }
}

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.navigationItem.title = [self.detailItem name];
        self.nameField.text = self.detailItem.name;
        self.numberField.text = [self.detailItem.number stringValue];
        self.notesField.text = self.detailItem.notes;
        self.imageView.image = self.detailItem.barCode;
        if (nil != self.imageView.image)
        {
            [self.addBarCodeImageButton setHidden:YES];
        }
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)edit:(id)sender
{
    [self.nameField setEnabled:YES];
    [self.numberField setEnabled:YES];
    [self.notesField setEditable:YES];
    UIBarButtonItem *doneButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(save:)];
    self.navigationItem.rightBarButtonItem = doneButton;
    if (nil == self.imageView.image)
    {
        [self.addBarCodeImageButton setEnabled:YES];
    }
    
}



- (IBAction)save:(id)sender
{
    self.detailItem.name = self.nameField.text;
    self.detailItem.number = [NSNumber numberWithInteger:[self.numberField.text integerValue]];
    self.detailItem.notes = self.notesField.text;
    [self.nameField setEnabled:NO];
    self.detailItem.barCode = self.imageView.image;
    [self.numberField setEnabled:NO];
    [self.notesField setEditable:NO];
        UIBarButtonItem *editButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(edit:)];
    self.navigationItem.rightBarButtonItem = editButton;
    
    [self.tableViewController saveCards];
    

}


- (IBAction)addBarCodeImage:(id)sender
{
    
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.imageView.image = chosenImage;
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    [self.addBarCodeImageButton setHidden:YES];
    
}


- (void)selectPhoto{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}


- (void)takePhoto {
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
    
}


- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}


+(NSSet *) keyPathsForValuesAffectingValueForKey:(NSString *)key
{
    NSSet *result = nil;
    
    return result;
}

@end
