//
//  StepperView.h
//  Stepper_Control2
//
//  Created by Toleen Jaradat on 6/23/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate

-(void) stepperLabelValueChanged:(int) count;

@end

@interface StepperView : UIView
{
    UILabel *stepperLabel;
}

@property (nonatomic,weak) id <StepperViewDelegate> delegate;

@property(nonatomic, assign) int minValue;
@property(nonatomic, assign) int maxValue;
@property(nonatomic, assign) int stepperValue;

@end