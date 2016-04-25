//
//  ViewController.m
//  TextToSpeech
//
//  Created by Apple on 25/04/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) IBOutlet UITextField *enterTxt;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)textToSpeech:(UISegmentedControl *)sender {
    
    switch (sender.selectedSegmentIndex) {
        case 0:{
            
            
             AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
             AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:_enterTxt.text];
             utterance.rate = 0.60;
             utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-gb"];
             [synthesizer speakUtterance:utterance];
             synthesizer = nil;
          
            
            break;}
            
        case 1:{
            
           
             AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
             AVSpeechUtterance *utterance = [[AVSpeechUtterance alloc] initWithString:_enterTxt.text];
             utterance.rate = 0.60;
             utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-au"];
             [synthesizer speakUtterance:utterance];
             synthesizer = nil;
            
            
            break;}
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
