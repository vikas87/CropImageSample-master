//
//  Page2.h
//  CropImageSample
//
//  Created by Vikas on 28/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page3.h"

@interface Page2 : UIViewController<UIScrollViewDelegate>
{
    IBOutlet UIScrollView *scrollView;
    UIImageView *imageView;
}
@property (nonatomic, retain) UIScrollView *scrollView;
@property (nonatomic, retain) UIImageView *imageView;
@end
