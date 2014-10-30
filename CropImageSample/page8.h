//
//  page8.h
//  CropImageSample
//
//  Created by Vikas on 30/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface page8 : UIViewController
{
    IBOutlet UIImageView *camViewAni;
    IBOutlet UIButton *camBtn;
}
@property(nonatomic,retain)IBOutlet UIImageView *camViewAni;
@property(nonatomic,retain)IBOutlet UIButton *camBtn;
- (IBAction)camAction:(id)sender;
@end
