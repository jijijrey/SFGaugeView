//
//  SFViewController.h
//  TachometerView
//
//  Created by Thomas Winkler on 15/11/13.
//  Copyright (c) 2013 Thomas Winkler. All rights reserved.
//

#import "SFViewController.h"
#import "SFGaugeView.h"
#import "SFViewXIB.h"


@interface SFViewController ()

@property (weak, nonatomic) IBOutlet SFGaugeView *topTachometer;

@end

@implementation SFViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
    
    // Load from XIB/NIB example:
//    SFViewXIB* view = [[[NSBundle mainBundle] loadNibNamed:@"SFViewXIB" owner:nil options:nil] lastObject];
//    view.graphSlider.bgColor     = [UIColor colorWithRed:0/255.0 green:124/255.0 blue:205/255.0 alpha:1];
//    view.graphSlider.needleColor = [UIColor colorWithRed:0/255.0 green:39/255.0 blue:64/255.0 alpha:1];
//    view.graphSlider.hideLevel   = YES;
//    
//    view.graphSlider.maxlevel = 115; // initial
//    view.graphSlider.currentLevel = 0;
//    
//    view.frame = self.view.frame;
//    [self.view addSubview:view];
    
    self.topTachometer.maxlevel = 10;
    self.topTachometer.minlevel = 0;
    self.topTachometer.currentLevel = 8;
    self.topTachometer.passingLevel = 3;
    self.topTachometer.hideLevel = YES;
    
}

- (void) sfGaugeView:(SFGaugeView *)gaugeView didChangeLevel:(NSInteger)level
{
    NSLog(@"Value of middle tachometer changed to %ld", (long)level);
}

@end
