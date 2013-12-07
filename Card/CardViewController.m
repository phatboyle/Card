//
//  CardViewController.m
//  Card
//
//  Created by Pat Boyle on 11/24/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "CardViewController.h"
#import "Deck.h"
#import "PlayingCardDeck.h"

@interface CardViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) NSInteger flipCount;
@property (strong, nonatomic) Deck *deck;
@end

@implementation CardViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)touchCardButton:(UIButton *)sender {
    if ([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"] forState: UIControlStateNormal];
        [sender setTitle:@"" forState: UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"] forState:UIControlStateNormal];
        Card *c = [self.deck drawRandomCard];
        NSLog(@"%@",c.contents);
        [sender setTitle: c.contents forState:UIControlStateNormal];
    }
    self.flipCount++;
}

- (Deck*) deck{
    if (!_deck) {
        _deck = [[PlayingCardDeck alloc] init];
        
    }
    return _deck;
    
}

- (void)setFlipCount:(NSInteger)flipCount
{
    _flipCount=flipCount;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips %d", self.flipCount ];
        NSLog(@"flips changed to %d", self.flipCount);
    
}



@end
