//
//  CVViewViewController.m
//  OpenCV4iOS
//
//  Created by Akaguma on 13/01/25.
//  Copyright (c) 2013年 Akaguma Takayuki. All rights reserved.
//

#import "CVViewViewController.h"

@interface CVViewViewController ()

@end

@implementation CVViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _videoCamera = [[CvVideoCamera alloc] initWithParentView:_imageView];
    _videoCamera.delegate = self;
    _videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionBack;
    _videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset640x480;
    _videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationPortrait;
    _videoCamera.defaultFPS = 30;

    [_videoCamera start];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)capStart:(id)sender
{
    [_videoCamera start];
}

#ifdef __cplusplus
- (void)processImage:(cv::Mat&)image;
{
    RunProcessing(image, image);
}
#endif

@end
