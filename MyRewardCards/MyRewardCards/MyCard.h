//
//  MyCard.h
//  MyRewardCards
//
//  Created by Manjunath  on 6/6/15.
//  Copyright (c) 2015 Manjunath . All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MyCard : NSObject

@property (readwrite, copy) NSString *name;
@property (readwrite, copy) NSNumber *number;
@property (readwrite, copy) UIImage *barCode;
@property (readwrite, copy) NSString *notes;

@end
