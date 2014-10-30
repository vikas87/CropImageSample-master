//
//  ImageViewController.m
//  CropImageSample
//
//  Created by Kishikawa Katsumi on 11/11/14.
//  Copyright (c) 2011 Kishikawa Katsumi. All rights reserved.
//

#import "ImageViewController.h"

@implementation ImageViewController

@synthesize imageView;
@synthesize image;

- (void)dealloc {
    
    //self.imageView = nil;
    //self.image = nil;
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.navigationItem.title = NSLocalizedString(@"Cropped Image", nil);

    imageView.layer.borderWidth = 3.0f;
    
    imageView.layer.borderColor = [UIColor whiteColor].CGColor;
    
//    For Circular Shape
    imageView.layer.cornerRadius = 172.5;
    imageView.clipsToBounds = YES;

    
    imageView.image = image;
    
}
							
@end
