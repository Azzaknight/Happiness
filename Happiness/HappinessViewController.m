//
//  HappinessViewController.m
//  Happiness
//
//  Created by Pamamarch on 17/09/2013.
//  Copyright (c) 2013 Finger Flick Games. All rights reserved.
//

#import "HappinessViewController.h"
#import "FaceView.h"

@interface HappinessViewController ()

@property (nonatomic, weak) IBOutlet FaceView* faceView;

@end



@implementation HappinessViewController

-(void) setHappiness:(int)happiness {
    
    if(_happiness != happiness) _happiness = happiness;
    [self.faceView setNeedsDisplay]; // Anytime our model changes we do redraw
    
}


-(void)setFaceView:(FaceView *)faceView {
    
    _faceView = faceView;
    UIPinchGestureRecognizer * pgr = [[UIPinchGestureRecognizer alloc] initWithTarget:self.faceView action:@selector(pinch:)];
    [self.faceView addGestureRecognizer:pgr];

}


- (BOOL)shouldAutorotate {
    
    return YES; // support all orientations!
    
}


//**************************************************************************
- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
