//
//  page9.m
//  CropImageSample
//
//  Created by Vikas on 30/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page9.h"

@interface page9 ()

@end

@implementation page9
@synthesize imageView;
@synthesize image;

- (void)dealloc {
    
    self.imageView = nil;
    self.image = nil;
    [super dealloc];
}

- (void)viewDidLoad {
    
    [super viewDidLoad];

    
    self.navigationItem.title = NSLocalizedString(@"Cropped Image", nil);
    
    imageView.layer.borderWidth = 3.0f;
    
    imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    //    For Circular Shape
    
    imageView.layer.cornerRadius = 172.5;
    imageView.clipsToBounds = YES;
    
    
//    imageView.image = image;
    
//    float degrees = 90; //the value in degrees
//    imageView.transform = CGAffineTransformMakeRotation(degrees * M_PI/180);
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if (interfaceOrientation==UIInterfaceOrientationLandscapeLeft || interfaceOrientation==UIInterfaceOrientationLandscapeRight)
        return YES;
    
    return NO;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
