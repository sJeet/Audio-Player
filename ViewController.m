//
//  ViewController.m
//  Media Player
//
//  Jeet Shah
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize objAudio;
@synthesize objVol;

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

- (IBAction)playAudio:(id)sender {
    objAudio.volume = objVol.value;
    
    NSString *pathAudio = [[NSBundle mainBundle] pathForResource:@"twilight_guitar" ofType:@"mp3"];
    
    objAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:pathAudio] error:nil];
    
    objAudio.volume = 0.5;
    [objAudio play];
}

- (IBAction)pauseAudio:(id)sender {
    [objAudio pause];
}

- (IBAction)volumeSlider:(id)sender {
    objAudio.volume = objVol.value;
}
@end
