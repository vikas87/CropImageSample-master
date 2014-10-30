//
//  HomeViewController.h
//  CropImageSample
//
//  Created by Vikas on 28/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Page2.h"

@interface HomeViewController : UIViewController<UITextFieldDelegate>
{
    IBOutlet UITextField *text;
}
@property(nonatomic,retain)IBOutlet UITextField *text;;
- (IBAction)gotoNext:(id)sender;
@end
