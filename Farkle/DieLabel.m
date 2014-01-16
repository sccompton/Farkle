//
//  DieLabel.m
//  Farkle
//
//  Created by Stephen Compton on 1/15/14.
//  Copyright (c) 2014 Stephen Compton. All rights reserved.
//

#import "DieLabel.h"

int diceNumber;


@implementation DieLabel




- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


-(void)roll {
    int diceNumber = arc4random() % 7;
    self.text = [NSString stringWithFormat:@"%d",diceNumber];
}


-(IBAction)labelWasTapped:(id)sender{
    self.backgroundColor = [UIColor greenColor];
    [_delegate didChooseDie:self];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
