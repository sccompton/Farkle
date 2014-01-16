//
//  ViewController.m
//  Farkle
//
//  Created by Stephen Compton on 1/15/14.
//  Copyright (c) 2014 Stephen Compton. All rights reserved.
//

#import "ViewController.h"
#import "DieLabel.h" 
#import "DieLabelDelegate.h"

int counterOne;
int counterTwo;
int counterThree;
int counterFour;
int counterFive;
int counterSix;

@interface ViewController () <DieLabelDelegate>


{
    __weak IBOutlet DieLabel *dieLabelOne;
    __weak IBOutlet DieLabel *dieLabelTwo;
    __weak IBOutlet DieLabel *dieLabelThree;
    __weak IBOutlet DieLabel *dieLabelFour;
    __weak IBOutlet DieLabel *dieLabelFive;
    __weak IBOutlet DieLabel *dieLabelSix;
    __weak IBOutlet UILabel *userScore;
}


@end

@implementation ViewController

NSMutableArray *dice;


- (void)viewDidLoad
{
    [super viewDidLoad];
    dice = [NSMutableArray array];
    dieLabelOne.delegate = self;
    dieLabelTwo.delegate = self;
    dieLabelThree.delegate = self;
    dieLabelFour.delegate = self;
    dieLabelFive.delegate = self;
    dieLabelSix.delegate = self;
}


-(void)didChooseDie:(DieLabel*)dieLabel{

[dice addObject:dieLabel];

}




- (IBAction)onRollButtonPressed:(id)sender {

    
    if ( !([dice containsObject:dieLabelOne]))
    [dieLabelOne roll];
    if ( !([dice containsObject:dieLabelTwo]))
        [dieLabelTwo roll];
    if ( !([dice containsObject:dieLabelThree]))
        [dieLabelThree roll];
    if ( !([dice containsObject:dieLabelFour]))
        [dieLabelFour roll];
    if ( !([dice containsObject:dieLabelFive]))
        [dieLabelFive roll];
    if ( !([dice containsObject:dieLabelSix]))
        [dieLabelSix roll];
    
}


-(void)counter
{
    //Counter One
    if ([dieLabelOne.text isEqualToString:(@"1")])
    {
        counterOne += counterOne;
    }
    
    if ([dieLabelTwo.text isEqualToString:@"1"])
    {
        counterOne += counterOne;
    } 

    if ([dieLabelThree.text isEqualToString:@"1"])
    {
        counterOne += counterOne;
    }
    if ([dieLabelFour.text isEqualToString:@"1"])
    {
        counterOne += counterOne;
    }
 
    if ([dieLabelFive.text isEqualToString: @"1"])
    {
        counterOne += counterOne;
    }
 
    if ([dieLabelSix.text isEqualToString: @"1"])
    {
        counterOne += counterOne;
    }
    counterOne += counterOne;
    
    //Counter Two
    if ([dieLabelOne.text isEqualToString: @"2"])
    {
        counterTwo += counterTwo;
    }
    
    if ([dieLabelTwo.text isEqualToString: @"2"])
    {
        counterTwo += counterTwo;
    }
    
    if ([dieLabelThree.text isEqualToString: @"2"])
    {
        counterTwo += counterTwo;
    }
    if ([dieLabelFour.text isEqualToString:@"2"])
    {
        counterTwo += counterTwo;
    }
    
    if ([dieLabelFive.text isEqualToString: @"2"])
    {
        counterTwo += counterTwo;
    }
    
    if ([dieLabelSix.text isEqualToString:@"2"])
    {
        counterTwo += counterTwo;
    }

    
    //Counter Three
    if ([dieLabelOne.text isEqualToString: @"3"])
    {
        counterThree += counterThree;
    }
    
    if ([dieLabelTwo.text isEqualToString: @"3"])
    {
        counterThree += counterThree;
    }
    
    if ([dieLabelThree.text isEqualToString: @"3"])
    {
        counterThree += counterThree;
    }
    if ([dieLabelFour.text isEqualToString: @"3"])
    {
        counterThree += counterThree;
    }
    
    if ([dieLabelFive.text isEqualToString:@"3"])
    {
        counterThree += counterThree;
    }
    
    if ([dieLabelSix.text isEqualToString: @"3"])
    {
        counterThree += counterThree;
    }
    
    
    
    //Counter Four
    if ([dieLabelOne.text isEqualToString: @"4"])
    {
        counterFour += counterFour;
    }
    
    if ([dieLabelTwo.text isEqualToString: @"4"])
    {
        counterFour += counterFour;
    }
    
    if ([dieLabelThree.text isEqualToString: @"4"])
    {
        counterFour += counterFour;
    }
    if ([dieLabelFour.text isEqualToString: @"4"])
    {
        counterFour += counterFour;
    }
    
    if ([dieLabelFive.text isEqualToString:@"4"])
    {
        counterFour += counterFour;
    }
    
    if ([dieLabelSix.text isEqualToString: @"4"])
    {
        counterFour += counterFour;
    }
    
    
    //Counter Five
    if ([dieLabelOne.text isEqualToString: @"5"])
    {
        counterFive += counterFive;
    }
    
    if ([dieLabelTwo.text isEqualToString: @"5"])
    {
        counterFive += counterFive;
    }
    
    if ([dieLabelThree.text isEqualToString:@"5"])
    {
        counterFive += counterFive;
    }
    if ([dieLabelFour.text isEqualToString: @"5"])
    {
        counterFive += counterFive;
    }
    
    if ([dieLabelFive.text isEqualToString: @"5"])
    {
        counterFive += counterFive;
    }
    
    if ([dieLabelSix.text isEqualToString: @"5"])
    {
        counterFive += counterFive;
    }
    

    //Counter Six
    if ([dieLabelOne.text isEqualToString:@"6"])
    {
        counterSix += counterSix;
    }
    
    if ([dieLabelTwo.text isEqualToString:@"6"])
    {
        counterSix += counterSix;
    }
    
    if ([dieLabelThree.text isEqualToString:@"6"])
    {
        counterSix += counterSix;
    }
    if ([dieLabelFour.text isEqualToString: @"6"])
    {
        counterSix += counterSix;
    }
    
    if ([dieLabelFive.text isEqualToString: @"6"])
    {
        counterSix += counterSix;
    }
    
    if ([dieLabelSix.text isEqualToString: @"6"])
    {
        counterSix += counterSix;
    }
    NSLog(@"The first die is %d", counterOne);
    NSLog(@"The second die is %d", counterTwo);
    NSLog(@"The third die is %d", counterThree);
    NSLog(@"The fourth die is %d", counterFour);
    NSLog(@"The fifth die is %d", counterFive);
    NSLog(@"The sixth die is %d", counterSix);
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
