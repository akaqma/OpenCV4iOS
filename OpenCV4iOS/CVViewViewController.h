//
//  CVViewViewController.h
//  OpenCV4iOS
//
//  Created by Akaguma on 13/01/25.
//  Copyright (c) 2013年 Akaguma Takayuki. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CVViewViewController : UIViewController
<CvVideoCameraDelegate>
{
    IBOutlet UIImageView *_imageView;
    CvVideoCamera *_videoCamera;
}

void RunProcessing(const cv::Mat& src, cv::Mat& dst);

@end
