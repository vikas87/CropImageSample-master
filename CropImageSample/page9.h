//
//  page9.h
//  CropImageSample
//
//  Created by Vikas on 30/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface page9 : UIViewController
{
    UIImageView *imageView;
    UIImage *image;
}
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
@property (nonatomic, retain) UIImage *image;
@end
