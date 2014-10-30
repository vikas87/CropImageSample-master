//
//  page6.h
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page7.h"

@interface page6 : UIViewController
{
   IBOutlet UIImageView *backImage;
    UIButton *gotoNextBtn;
}
@property(nonatomic,retain)IBOutlet UIImageView *backImage;
@property(nonatomic,retain)UIButton *gotoNextBtn;
@end
