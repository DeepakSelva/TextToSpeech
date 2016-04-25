//
//  ViewController.h
//  TextToSpeech
//
//  Created by Apple on 25/04/16.
//  Copyright © 2016 Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController<AVSpeechSynthesizerDelegate>
{

    CFURLRef soundFileURLRef;
    SystemSoundID soundFileObject;
}
@end

