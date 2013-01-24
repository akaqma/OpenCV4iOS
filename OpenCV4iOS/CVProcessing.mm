//
//  CVProcessing.mm
//  OpenCV4iOS
//
//  Created by Akaguma on 13/01/25.
//  Copyright (c) 2013年 Akaguma Takayuki. All rights reserved.
//

#ifdef __cplusplus

#import "CVViewViewController.h"

// Main
void RunProcessing(const cv::Mat& src, cv::Mat& dst)
{
    // Do some OpenCV stuff with the image
    cv::Mat image_copy;
    cvtColor(src, image_copy, CV_BGRA2BGR);
    
    // invert image
    bitwise_not(image_copy, image_copy);
    cvtColor(image_copy, dst, CV_BGR2BGRA);
}


#endif
