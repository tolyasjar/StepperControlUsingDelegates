//
//  ViewController.m
//  Stepper_Control2
//
//  Created by Toleen Jaradat on 6/23/16.
//  Copyright © 2016 Toleen Jaradat. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    stepperView.backgroundColor = [UIColor redColor];
    stepperView.minValue = 0;
    stepperView.maxValue = 10;
    stepperView.stepperValue = 5;

    stepperView.center = self.view.center;
    stepperView.delegate = self;
    [self.view addSubview:stepperView];
    

    
    }

-(void) stepperLabelValueChanged:(int)count {
    
    NSLog(@"StepperValue = %d",count);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
