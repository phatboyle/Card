//
//  Card.h
//  Card
//
//  Created by Pat Boyle on 11/24/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (nonatomic, strong) NSString *contents;

@property (nonatomic, getter = isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

-(int)match: (NSArray *) othercards;


@end
