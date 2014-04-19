//
//  ViewController.h
//  Media Player
//
//  Jeet Shah
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) AVAudioPlayer *objAudio;
@property (strong, nonatomic) IBOutlet UISlider *objVol;

- (IBAction)playAudio:(id)sender;
- (IBAction)pauseAudio:(id)sender;
- (IBAction)volumeSlider:(id)sender;

@end
