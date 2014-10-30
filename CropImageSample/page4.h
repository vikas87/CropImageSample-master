//
//  page4.h
//  CropImageSample
//
//  Created by Vikas on 29/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "page5.h"

@interface page4 : UIViewController
{
    IBOutlet UIButton *playBtn;
}
@property(nonatomic,retain)IBOutlet UIButton *playBtn;
- (IBAction)gotoNext:(id)sender;
@end
