//
//  PlayingCardDeck.m
//  Card
//
//  Created by Pat Boyle on 11/30/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@implementation PlayingCardDeck

- (instancetype) init
{
    self = [super init];
    if (self){
        for (NSUInteger rank=1; rank <= [PlayingCard maxRank]; rank++){
            for (NSString* suit in [PlayingCard validSuits]){
                PlayingCard *card = [[PlayingCard alloc]init];
                card.suit = suit;
                card.rank = rank;
                [self addCard:card];
                
            }
        }
        
    }
    
    return self;
}


@end
