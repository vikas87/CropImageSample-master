//
//  page3.h
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page4.h"

@interface page3 : UIViewController
{
    IBOutlet UIImageView *earthImage;
    IBOutlet UIButton *playButton;
    
    IBOutlet UIImageView *ani1;
    IBOutlet UIImageView *ani2;
    IBOutlet UIImageView *ani3;
    
    IBOutlet UIImageView *headerImage;

}
@property(nonatomic,retain) IBOutlet UIImageView *earthImage;
@property(nonatomic,retain) IBOutlet UIButton *playButton;

@property(nonatomic,retain) IBOutlet UIImageView *ani1;
@property(nonatomic,retain) IBOutlet UIImageView *ani2;
@property(nonatomic,retain) IBOutlet UIImageView *ani3;
@property(nonatomic,retain) IBOutlet UIImageView *headerImage;
- (IBAction)gotoNext:(id)sender;

@end
