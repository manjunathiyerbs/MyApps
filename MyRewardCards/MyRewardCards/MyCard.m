//
//  MyCard.m
//  MyRewardCards
//
//  Created by Manjunath  on 6/6/15.
//  Copyright (c) 2015 Manjunath . All rights reserved.
//

#import "MyCard.h"

@implementation MyCard


- (id)initWithCoder:(NSCoder *)decoder
{
    if(self=[self init])
    {
        self.name = [decoder decodeObjectForKey:MyCardName];
        self.number = [decoder decodeObjectForKey:MyCardNumber];
        self.notes = [decoder decodeObjectForKey:MyCardNotes];
        self.barCode = [decoder decodeObjectForKey:MyCardBarCode];
    }
    return self;
}


- (void)encodeWithCoder:(NSCoder *)encoder
{
    [encoder encodeObject:self.name forKey:MyCardName];
    [encoder encodeObject:self.number forKey:MyCardNumber];
    [encoder encodeObject:self.notes forKey:MyCardNotes];
    [encoder encodeObject:self.barCode forKey:MyCardBarCode];
}

@end
