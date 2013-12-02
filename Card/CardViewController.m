//
//  CardViewController.m
//  Card
//
//  Created by Pat Boyle on 11/24/13.
//  Copyright (c) 2013 Pat Boyle. All rights reserved.
//

#import "CardViewController.h"

@interface CardViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipCountLabel;
@property (nonatomic) NSInteger flipCount;
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
        [sender setTitle: @"A♣" forState:UIControlStateNormal];
    }
    self.flipCount++;


}

- (void)setFlipCount:(NSInteger)flipCount
{
    _flipCount=flipCount;
    self.flipCountLabel.text = [NSString stringWithFormat:@"Flips %d", self.flipCount ];
        NSLog(@"flips changed to %d", self.flipCount);
    
}



@end
