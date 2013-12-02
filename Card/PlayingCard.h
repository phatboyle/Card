//
//  PlayingCard.h
//  Card
//
//  Created by Pat Boyle on 11/28/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic, strong) NSString* suit;
@property (nonatomic) NSUInteger rank;
+ (NSArray *) validSuits;
+ (NSUInteger) maxRank;

@end


