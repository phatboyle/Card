//
//  Card.m
//  Card
//
//  Created by Pat Boyle on 11/24/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int) match:(NSArray *)othercards
{
    int score = 0;
    for (Card *card in othercards){
        if ([card.contents isEqualToString: self.contents])
            score++;
        
    }
    return score;
}

@end
