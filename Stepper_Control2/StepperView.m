//
//  StepperView.m
//  Stepper_Control2
//
//  Created by Toleen Jaradat on 6/23/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    [self setup];
    return self;
}



-(void) setup {
        
    UIButton *plusButton = [[UIButton alloc] initWithFrame:CGRectMake(225, 0, 75, 50)];
    plusButton.backgroundColor = [UIColor lightGrayColor];
    [plusButton setTitle:@"+" forState: UIControlStateNormal];
    plusButton.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:25];
    plusButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:plusButton];
    
    UIButton *minusButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 75, 50)];
    minusButton.backgroundColor = [UIColor lightGrayColor];
    [minusButton setTitle:@"-" forState: UIControlStateNormal];
    plusButton.titleLabel.font = [UIFont fontWithName:@"Helvetica" size:25];
    plusButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:minusButton];
    
    stepperLabel = [[UILabel alloc] initWithFrame:CGRectMake(75, 0, 150, 50)];
    stepperLabel.backgroundColor = [UIColor darkGrayColor];
    stepperLabel.text = @"5";
    stepperLabel.font = [UIFont fontWithName:@"Helvetica" size:25];
    stepperLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:stepperLabel];
    
    [plusButton addTarget:self action:@selector(buttonIsPressed:) forControlEvents:UIControlEventTouchUpInside];
    [minusButton addTarget:self action:@selector(buttonIsPressed:) forControlEvents:UIControlEventTouchUpInside];

}


- (void)buttonIsPressed:(UIButton*)sender{
    
    UIButton *button = (UIButton *) sender;
    
    NSString *title = button.titleLabel.text;
    
    if([title isEqualToString:@"+"]) {
        
        if(self.stepperValue < self.maxValue){
        
        self.stepperValue ++;
        [self.delegate stepperLabelValueChanged:_stepperValue];
        stepperLabel.text = [NSString stringWithFormat:@"%d" ,_stepperValue];
            
        }
        else {
            
            NSLog(@"You have reached the maximum value for the stepper");
            
        }
        
        NSLog(@"Pluse Button Pressed");
        
    } else {
        
        if(self.stepperValue > self.minValue){
            
        self.stepperValue --;
        [button setTitle:@"-" forState:UIControlStateNormal];
        [self.delegate stepperLabelValueChanged:_stepperValue];
        stepperLabel.text = [NSString stringWithFormat:@"%d" ,_stepperValue];
            
        }
        else {
            
             NSLog(@"You have reached the minimum value for the stepper");
        }
        
        NSLog(@"Minus Button Pressed");
        
    }

}



@end
