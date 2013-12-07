//
//  Deck.m
//  Card
//
//  Created by Pat Boyle on 11/27/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "Deck.h"

@interface Deck ()
@property (nonatomic, strong) NSMutableArray* cards;
@end

@implementation Deck

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (NSMutableArray *) cards{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
        
}

- (void)addCard:(Card *)card
{
    [self addCard:card atTop:NO];
}

- (Card*) drawRandomCard
{
    Card* randomCard = nil;
    if ([self.cards count]){

        NSUInteger index = arc4random() % [self.cards count];
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
}


@end
