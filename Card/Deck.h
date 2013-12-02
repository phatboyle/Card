//
//  Deck.h
//  Card
//
//  Created by Pat Boyle on 11/27/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
- (void)addCard: (Card*)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card*) drawRandomCard;

@end
