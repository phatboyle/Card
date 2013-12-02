//
//  PlayingCard.m
//  Card
//
//  Created by Pat Boyle on 11/28/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
@synthesize suit=_suit;

+ (NSArray *) rankStrings {
    return [NSArray arrayWithObjects:@"?",@"A",@"2",@"3",@"4", @"5", @"6", @"7", @"8", @"9",@"10",@"J",@"Q",@"K", nil];
}

- (NSString *)contents {
    
    return [[PlayingCard rankStrings][self.rank] stringByAppendingString:self.suit];
    
}

+ (NSArray*) validSuits {
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void) setSuit: (NSString*)  suit {
    if ([[PlayingCard validSuits] containsObject: suit]){
        _suit=suit;
    }
}

- (NSString *) suit {
    return _suit ? _suit : @"?";
}

+ (NSUInteger) maxRank {
    return [[self rankStrings] count] -1;
}

- (void) setRank:(NSUInteger)rank
{
    if (rank <= [PlayingCard maxRank]){
        _rank=rank;
    }
}



@end
