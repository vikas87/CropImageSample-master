//
//  page8.m
//  CropImageSample
//
//  Created by Vikas on 30/10/14.
//  Copyright (c) 2014 Kishikawa Katsumi. All rights reserved.
//

#import "page8.h"
#import "CameraViewController.h"

@interface page8 ()

@end

@implementation page8
@synthesize camViewAni;
@synthesize camBtn;

- (void)viewDidLoad {
    [camViewAni setImage:[UIImage imageNamed:@"page8-3.png"]];
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)camAction:(id)sender {
    
//    [UIView animateWithDuration:1.0
//                          delay:0.1
//                        options: UIViewAnimationOptionCurveEaseIn
//                     animations:^{
    
                         camViewAni.animationImages = [NSArray arrayWithObjects:
                                                       
                                                       [UIImage imageNamed:@"page8-3.png"],
                                                       [UIImage imageNamed:@"page8-3.png"],
                                                       
                                                       [UIImage imageNamed:@"page8-5.png"],
                                                       [UIImage imageNamed:@"page8-5.png"],
                                                       [UIImage imageNamed:@"page8-5.png"],
                                                       [UIImage imageNamed:@"page8-5.png"],
                                                       
                                                       [UIImage imageNamed:@"page8-6.png"],
                                                       [UIImage imageNamed:@"page8-6.png"],
                                                       [UIImage imageNamed:@"page8-6.png"],
                                                       [UIImage imageNamed:@"page8-6.png"],nil];
                         camViewAni.animationDuration = 1.5f;
                         camViewAni.animationRepeatCount = 1;
                         [camViewAni startAnimating];
        [NSTimer scheduledTimerWithTimeInterval:1.5 target:self selector:@selector(nextAnima:) userInfo:nil repeats:NO];

                         
//                     }
//                     completion:^(BOOL finished)
//     {
//         [camViewAni setImage:[UIImage imageNamed:@"page8-6.png"]];
//         NSLog(@"hi i am here");
//     }
//     ];

}
- (IBAction)nextAnima:(id)sender {
    
//     CameraViewController *cameraViewController = [[[CameraViewController alloc] init] autorelease];
    CameraViewController *CameraViewControllerObj=[[CameraViewController alloc]init];
    [self.navigationController pushViewController:CameraViewControllerObj animated:NO];
    
    [camViewAni setImage:[UIImage imageNamed:@"page8-6.png"]];
    NSLog(@"hi i am here");
}
@end
